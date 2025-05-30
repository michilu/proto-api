// Code generated by ogen, DO NOT EDIT.

package oas

import (
	"github.com/go-faster/errors"

	"github.com/ogen-go/ogen/validate"
)

func (s *Protov1Status) Validate() error {
	if s == nil {
		return validate.ErrNilPointer
	}

	var failures []validate.FieldError
	if err := func() error {
		if value, ok := s.Code.Get(); ok {
			if err := func() error {
				if err := value.Validate(); err != nil {
					return err
				}
				return nil
			}(); err != nil {
				return err
			}
		}
		return nil
	}(); err != nil {
		failures = append(failures, validate.FieldError{
			Name:  "code",
			Error: err,
		})
	}
	if len(failures) > 0 {
		return &validate.Error{Fields: failures}
	}
	return nil
}

func (s RpcCode) Validate() error {
	switch s {
	case "OK":
		return nil
	case "CANCELLED":
		return nil
	case "UNKNOWN":
		return nil
	case "INVALID_ARGUMENT":
		return nil
	case "DEADLINE_EXCEEDED":
		return nil
	case "NOT_FOUND":
		return nil
	case "ALREADY_EXISTS":
		return nil
	case "PERMISSION_DENIED":
		return nil
	case "UNAUTHENTICATED":
		return nil
	case "RESOURCE_EXHAUSTED":
		return nil
	case "FAILED_PRECONDITION":
		return nil
	case "ABORTED":
		return nil
	case "OUT_OF_RANGE":
		return nil
	case "UNIMPLEMENTED":
		return nil
	case "INTERNAL":
		return nil
	case "UNAVAILABLE":
		return nil
	case "DATA_LOSS":
		return nil
	default:
		return errors.Errorf("invalid value: %v", s)
	}
}

func (s *V1CheckResponse) Validate() error {
	if s == nil {
		return validate.ErrNilPointer
	}

	var failures []validate.FieldError
	if err := func() error {
		if err := s.Status.Validate(); err != nil {
			return err
		}
		return nil
	}(); err != nil {
		failures = append(failures, validate.FieldError{
			Name:  "status",
			Error: err,
		})
	}
	if len(failures) > 0 {
		return &validate.Error{Fields: failures}
	}
	return nil
}

func (s *V1ExampleServiceQueryResponse) Validate() error {
	if s == nil {
		return validate.ErrNilPointer
	}

	var failures []validate.FieldError
	if err := func() error {
		if value, ok := s.Status.Get(); ok {
			if err := func() error {
				if err := value.Validate(); err != nil {
					return err
				}
				return nil
			}(); err != nil {
				return err
			}
		}
		return nil
	}(); err != nil {
		failures = append(failures, validate.FieldError{
			Name:  "status",
			Error: err,
		})
	}
	if len(failures) > 0 {
		return &validate.Error{Fields: failures}
	}
	return nil
}

func (s V1ServingStatus) Validate() error {
	switch s {
	case "SERVING_STATUS_UNKNOWN_UNSPECIFIED":
		return nil
	case "SERVING_STATUS_SERVING":
		return nil
	case "SERVING_STATUS_NOT_SERVING":
		return nil
	default:
		return errors.Errorf("invalid value: %v", s)
	}
}
