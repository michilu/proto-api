// Code generated by protoc-gen-validate. DO NOT EDIT.
// source: proto/v1/service.proto

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

// define the regex for a UUID once up-front
var _service_uuidPattern = regexp.MustCompile("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$")

// Validate checks the field values on ExampleServiceQueryRequest with the
// rules defined in the proto definition for this message. If any rules are
// violated, the first error encountered is returned, or nil if there are no violations.
func (m *ExampleServiceQueryRequest) Validate() error {
	return m.validate(false)
}

// ValidateAll checks the field values on ExampleServiceQueryRequest with the
// rules defined in the proto definition for this message. If any rules are
// violated, the result is a list of violation errors wrapped in
// ExampleServiceQueryRequestMultiError, or nil if none found.
func (m *ExampleServiceQueryRequest) ValidateAll() error {
	return m.validate(true)
}

func (m *ExampleServiceQueryRequest) validate(all bool) error {
	if m == nil {
		return nil
	}

	var errors []error

	if err := m._validateUuid(m.GetId()); err != nil {
		err = ExampleServiceQueryRequestValidationError{
			field:  "Id",
			reason: "value must be a valid UUID",
			cause:  err,
		}
		if !all {
			return err
		}
		errors = append(errors, err)
	}

	if len(errors) > 0 {
		return ExampleServiceQueryRequestMultiError(errors)
	}

	return nil
}

func (m *ExampleServiceQueryRequest) _validateUuid(uuid string) error {
	if matched := _service_uuidPattern.MatchString(uuid); !matched {
		return errors.New("invalid uuid format")
	}

	return nil
}

// ExampleServiceQueryRequestMultiError is an error wrapping multiple
// validation errors returned by ExampleServiceQueryRequest.ValidateAll() if
// the designated constraints aren't met.
type ExampleServiceQueryRequestMultiError []error

// Error returns a concatenation of all the error messages it wraps.
func (m ExampleServiceQueryRequestMultiError) Error() string {
	var msgs []string
	for _, err := range m {
		msgs = append(msgs, err.Error())
	}
	return strings.Join(msgs, "; ")
}

// AllErrors returns a list of validation violation errors.
func (m ExampleServiceQueryRequestMultiError) AllErrors() []error { return m }

// ExampleServiceQueryRequestValidationError is the validation error returned
// by ExampleServiceQueryRequest.Validate if the designated constraints aren't met.
type ExampleServiceQueryRequestValidationError struct {
	field  string
	reason string
	cause  error
	key    bool
}

// Field function returns field value.
func (e ExampleServiceQueryRequestValidationError) Field() string { return e.field }

// Reason function returns reason value.
func (e ExampleServiceQueryRequestValidationError) Reason() string { return e.reason }

// Cause function returns cause value.
func (e ExampleServiceQueryRequestValidationError) Cause() error { return e.cause }

// Key function returns key value.
func (e ExampleServiceQueryRequestValidationError) Key() bool { return e.key }

// ErrorName returns error name.
func (e ExampleServiceQueryRequestValidationError) ErrorName() string {
	return "ExampleServiceQueryRequestValidationError"
}

// Error satisfies the builtin error interface
func (e ExampleServiceQueryRequestValidationError) Error() string {
	cause := ""
	if e.cause != nil {
		cause = fmt.Sprintf(" | caused by: %v", e.cause)
	}

	key := ""
	if e.key {
		key = "key for "
	}

	return fmt.Sprintf(
		"invalid %sExampleServiceQueryRequest.%s: %s%s",
		key,
		e.field,
		e.reason,
		cause)
}

var _ error = ExampleServiceQueryRequestValidationError{}

var _ interface {
	Field() string
	Reason() string
	Key() bool
	Cause() error
	ErrorName() string
} = ExampleServiceQueryRequestValidationError{}

// Validate checks the field values on ExampleServiceQueryResponse with the
// rules defined in the proto definition for this message. If any rules are
// violated, the first error encountered is returned, or nil if there are no violations.
func (m *ExampleServiceQueryResponse) Validate() error {
	return m.validate(false)
}

// ValidateAll checks the field values on ExampleServiceQueryResponse with the
// rules defined in the proto definition for this message. If any rules are
// violated, the result is a list of violation errors wrapped in
// ExampleServiceQueryResponseMultiError, or nil if none found.
func (m *ExampleServiceQueryResponse) ValidateAll() error {
	return m.validate(true)
}

func (m *ExampleServiceQueryResponse) validate(all bool) error {
	if m == nil {
		return nil
	}

	var errors []error

	if all {
		switch v := interface{}(m.GetStatus()).(type) {
		case interface{ ValidateAll() error }:
			if err := v.ValidateAll(); err != nil {
				errors = append(errors, ExampleServiceQueryResponseValidationError{
					field:  "Status",
					reason: "embedded message failed validation",
					cause:  err,
				})
			}
		case interface{ Validate() error }:
			if err := v.Validate(); err != nil {
				errors = append(errors, ExampleServiceQueryResponseValidationError{
					field:  "Status",
					reason: "embedded message failed validation",
					cause:  err,
				})
			}
		}
	} else if v, ok := interface{}(m.GetStatus()).(interface{ Validate() error }); ok {
		if err := v.Validate(); err != nil {
			return ExampleServiceQueryResponseValidationError{
				field:  "Status",
				reason: "embedded message failed validation",
				cause:  err,
			}
		}
	}

	if len(errors) > 0 {
		return ExampleServiceQueryResponseMultiError(errors)
	}

	return nil
}

// ExampleServiceQueryResponseMultiError is an error wrapping multiple
// validation errors returned by ExampleServiceQueryResponse.ValidateAll() if
// the designated constraints aren't met.
type ExampleServiceQueryResponseMultiError []error

// Error returns a concatenation of all the error messages it wraps.
func (m ExampleServiceQueryResponseMultiError) Error() string {
	var msgs []string
	for _, err := range m {
		msgs = append(msgs, err.Error())
	}
	return strings.Join(msgs, "; ")
}

// AllErrors returns a list of validation violation errors.
func (m ExampleServiceQueryResponseMultiError) AllErrors() []error { return m }

// ExampleServiceQueryResponseValidationError is the validation error returned
// by ExampleServiceQueryResponse.Validate if the designated constraints
// aren't met.
type ExampleServiceQueryResponseValidationError struct {
	field  string
	reason string
	cause  error
	key    bool
}

// Field function returns field value.
func (e ExampleServiceQueryResponseValidationError) Field() string { return e.field }

// Reason function returns reason value.
func (e ExampleServiceQueryResponseValidationError) Reason() string { return e.reason }

// Cause function returns cause value.
func (e ExampleServiceQueryResponseValidationError) Cause() error { return e.cause }

// Key function returns key value.
func (e ExampleServiceQueryResponseValidationError) Key() bool { return e.key }

// ErrorName returns error name.
func (e ExampleServiceQueryResponseValidationError) ErrorName() string {
	return "ExampleServiceQueryResponseValidationError"
}

// Error satisfies the builtin error interface
func (e ExampleServiceQueryResponseValidationError) Error() string {
	cause := ""
	if e.cause != nil {
		cause = fmt.Sprintf(" | caused by: %v", e.cause)
	}

	key := ""
	if e.key {
		key = "key for "
	}

	return fmt.Sprintf(
		"invalid %sExampleServiceQueryResponse.%s: %s%s",
		key,
		e.field,
		e.reason,
		cause)
}

var _ error = ExampleServiceQueryResponseValidationError{}

var _ interface {
	Field() string
	Reason() string
	Key() bool
	Cause() error
	ErrorName() string
} = ExampleServiceQueryResponseValidationError{}
