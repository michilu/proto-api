// Code generated by ogen, DO NOT EDIT.

package oas

import (
	"context"
	"net/http"
	"strings"

	"github.com/go-faster/errors"

	"github.com/ogen-go/ogen/ogenerrors"
)

// SecurityHandler is handler for security parameters.
type SecurityHandler interface {
	// HandleApiKeyAuth handles ApiKeyAuth security.
	HandleApiKeyAuth(ctx context.Context, operationName string, t ApiKeyAuth) (context.Context, error)
	// HandleOAuth2 handles OAuth2 security.
	HandleOAuth2(ctx context.Context, operationName string, t OAuth2) (context.Context, error)
}

func findAuthorization(h http.Header, prefix string) (string, bool) {
	v, ok := h["Authorization"]
	if !ok {
		return "", false
	}
	for _, vv := range v {
		scheme, value, ok := strings.Cut(vv, " ")
		if !ok || !strings.EqualFold(scheme, prefix) {
			continue
		}
		return value, true
	}
	return "", false
}

func (s *Server) securityApiKeyAuth(ctx context.Context, operationName string, req *http.Request) (context.Context, bool, error) {
	var t ApiKeyAuth
	const parameterName = "X-API-Key"
	value := req.Header.Get(parameterName)
	if value == "" {
		return ctx, false, nil
	}
	t.APIKey = value
	rctx, err := s.sec.HandleApiKeyAuth(ctx, operationName, t)
	if errors.Is(err, ogenerrors.ErrSkipServerSecurity) {
		return nil, false, nil
	} else if err != nil {
		return nil, false, err
	}
	return rctx, true, err
}

var oauth2Scopes = map[string][]string{
	"ExampleServiceQuery": []string{
		"read",
		"write",
	},
	"HealthServiceCheck": []string{
		"read",
		"write",
	},
}

func (s *Server) securityOAuth2(ctx context.Context, operationName string, req *http.Request) (context.Context, bool, error) {
	var t OAuth2
	token, ok := findAuthorization(req.Header, "Bearer")
	if !ok {
		return ctx, false, nil
	}
	t.Token = token
	t.Scopes = oauth2Scopes[operationName]
	rctx, err := s.sec.HandleOAuth2(ctx, operationName, t)
	if errors.Is(err, ogenerrors.ErrSkipServerSecurity) {
		return nil, false, nil
	} else if err != nil {
		return nil, false, err
	}
	return rctx, true, err
}

// SecuritySource is provider of security values (tokens, passwords, etc.).
type SecuritySource interface {
	// ApiKeyAuth provides ApiKeyAuth security value.
	ApiKeyAuth(ctx context.Context, operationName string) (ApiKeyAuth, error)
	// OAuth2 provides OAuth2 security value.
	OAuth2(ctx context.Context, operationName string) (OAuth2, error)
}

func (s *Client) securityApiKeyAuth(ctx context.Context, operationName string, req *http.Request) error {
	t, err := s.sec.ApiKeyAuth(ctx, operationName)
	if err != nil {
		return errors.Wrap(err, "security source \"ApiKeyAuth\"")
	}
	req.Header.Set("X-API-Key", t.APIKey)
	return nil
}
func (s *Client) securityOAuth2(ctx context.Context, operationName string, req *http.Request) error {
	t, err := s.sec.OAuth2(ctx, operationName)
	if err != nil {
		return errors.Wrap(err, "security source \"OAuth2\"")
	}
	req.Header.Set("Authorization", "Bearer "+t.Token)
	return nil
}
