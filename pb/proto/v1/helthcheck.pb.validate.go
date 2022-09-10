// Code generated by protoc-gen-validate. DO NOT EDIT.
// source: proto/v1/helthcheck.proto

package v1

import (
	"bytes"
	"errors"
	"fmt"
	"net"
	"net/mail"
	"net/url"
	"regexp"
	"sort"
	"strings"
	"time"
	"unicode/utf8"

	"google.golang.org/protobuf/types/known/anypb"
)

// ensure the imports are used
var (
	_ = bytes.MinRead
	_ = errors.New("")
	_ = fmt.Print
	_ = utf8.UTFMax
	_ = (*regexp.Regexp)(nil)
	_ = (*strings.Reader)(nil)
	_ = net.IPv4len
	_ = time.Duration(0)
	_ = (*url.URL)(nil)
	_ = (*mail.Address)(nil)
	_ = anypb.Any{}
	_ = sort.Sort
)

// Validate checks the field values on HealthCheckServiceHealthCheckResponse
// with the rules defined in the proto definition for this message. If any
// rules are violated, the first error encountered is returned, or nil if
// there are no violations.
func (m *HealthCheckServiceHealthCheckResponse) Validate() error {
	return m.validate(false)
}

// ValidateAll checks the field values on HealthCheckServiceHealthCheckResponse
// with the rules defined in the proto definition for this message. If any
// rules are violated, the result is a list of violation errors wrapped in
// HealthCheckServiceHealthCheckResponseMultiError, or nil if none found.
func (m *HealthCheckServiceHealthCheckResponse) ValidateAll() error {
	return m.validate(true)
}

func (m *HealthCheckServiceHealthCheckResponse) validate(all bool) error {
	if m == nil {
		return nil
	}

	var errors []error

	if all {
		switch v := interface{}(m.GetValue()).(type) {
		case interface{ ValidateAll() error }:
			if err := v.ValidateAll(); err != nil {
				errors = append(errors, HealthCheckServiceHealthCheckResponseValidationError{
					field:  "Value",
					reason: "embedded message failed validation",
					cause:  err,
				})
			}
		case interface{ Validate() error }:
			if err := v.Validate(); err != nil {
				errors = append(errors, HealthCheckServiceHealthCheckResponseValidationError{
					field:  "Value",
					reason: "embedded message failed validation",
					cause:  err,
				})
			}
		}
	} else if v, ok := interface{}(m.GetValue()).(interface{ Validate() error }); ok {
		if err := v.Validate(); err != nil {
			return HealthCheckServiceHealthCheckResponseValidationError{
				field:  "Value",
				reason: "embedded message failed validation",
				cause:  err,
			}
		}
	}

	if len(errors) > 0 {
		return HealthCheckServiceHealthCheckResponseMultiError(errors)
	}

	return nil
}

// HealthCheckServiceHealthCheckResponseMultiError is an error wrapping
// multiple validation errors returned by
// HealthCheckServiceHealthCheckResponse.ValidateAll() if the designated
// constraints aren't met.
type HealthCheckServiceHealthCheckResponseMultiError []error

// Error returns a concatenation of all the error messages it wraps.
func (m HealthCheckServiceHealthCheckResponseMultiError) Error() string {
	var msgs []string
	for _, err := range m {
		msgs = append(msgs, err.Error())
	}
	return strings.Join(msgs, "; ")
}

// AllErrors returns a list of validation violation errors.
func (m HealthCheckServiceHealthCheckResponseMultiError) AllErrors() []error { return m }

// HealthCheckServiceHealthCheckResponseValidationError is the validation error
// returned by HealthCheckServiceHealthCheckResponse.Validate if the
// designated constraints aren't met.
type HealthCheckServiceHealthCheckResponseValidationError struct {
	field  string
	reason string
	cause  error
	key    bool
}

// Field function returns field value.
func (e HealthCheckServiceHealthCheckResponseValidationError) Field() string { return e.field }

// Reason function returns reason value.
func (e HealthCheckServiceHealthCheckResponseValidationError) Reason() string { return e.reason }

// Cause function returns cause value.
func (e HealthCheckServiceHealthCheckResponseValidationError) Cause() error { return e.cause }

// Key function returns key value.
func (e HealthCheckServiceHealthCheckResponseValidationError) Key() bool { return e.key }

// ErrorName returns error name.
func (e HealthCheckServiceHealthCheckResponseValidationError) ErrorName() string {
	return "HealthCheckServiceHealthCheckResponseValidationError"
}

// Error satisfies the builtin error interface
func (e HealthCheckServiceHealthCheckResponseValidationError) Error() string {
	cause := ""
	if e.cause != nil {
		cause = fmt.Sprintf(" | caused by: %v", e.cause)
	}

	key := ""
	if e.key {
		key = "key for "
	}

	return fmt.Sprintf(
		"invalid %sHealthCheckServiceHealthCheckResponse.%s: %s%s",
		key,
		e.field,
		e.reason,
		cause)
}

var _ error = HealthCheckServiceHealthCheckResponseValidationError{}

var _ interface {
	Field() string
	Reason() string
	Key() bool
	Cause() error
	ErrorName() string
} = HealthCheckServiceHealthCheckResponseValidationError{}
