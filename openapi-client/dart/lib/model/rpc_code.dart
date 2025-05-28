//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// The canonical error codes for gRPC APIs.   Sometimes multiple error codes may apply.  Services should return the most specific error code that applies.  For example, prefer `OUT_OF_RANGE` over `FAILED_PRECONDITION` if both codes apply. Similarly prefer `NOT_FOUND` or `ALREADY_EXISTS` over `FAILED_PRECONDITION`.   - OK: Not an error; returned on success.  HTTP Mapping: 200 OK  - CANCELLED: The operation was cancelled, typically by the caller.  HTTP Mapping: 499 Client Closed Request  - UNKNOWN: Unknown error.  For example, this error may be returned when a `Status` value received from another address space belongs to an error space that is not known in this address space.  Also errors raised by APIs that do not return enough error information may be converted to this error.  HTTP Mapping: 500 Internal Server Error  - INVALID_ARGUMENT: The client specified an invalid argument.  Note that this differs from `FAILED_PRECONDITION`.  `INVALID_ARGUMENT` indicates arguments that are problematic regardless of the state of the system (e.g., a malformed file name).  HTTP Mapping: 400 Bad Request  - DEADLINE_EXCEEDED: The deadline expired before the operation could complete. For operations that change the state of the system, this error may be returned even if the operation has completed successfully.  For example, a successful response from a server could have been delayed long enough for the deadline to expire.  HTTP Mapping: 504 Gateway Timeout  - NOT_FOUND: Some requested entity (e.g., file or directory) was not found.  Note to server developers: if a request is denied for an entire class of users, such as gradual feature rollout or undocumented allowlist, `NOT_FOUND` may be used. If a request is denied for some users within a class of users, such as user-based access control, `PERMISSION_DENIED` must be used.  HTTP Mapping: 404 Not Found  - ALREADY_EXISTS: The entity that a client attempted to create (e.g., file or directory) already exists.  HTTP Mapping: 409 Conflict  - PERMISSION_DENIED: The caller does not have permission to execute the specified operation. `PERMISSION_DENIED` must not be used for rejections caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for those errors). `PERMISSION_DENIED` must not be used if the caller can not be identified (use `UNAUTHENTICATED` instead for those errors). This error code does not imply the request is valid or the requested entity exists or satisfies other pre-conditions.  HTTP Mapping: 403 Forbidden  - UNAUTHENTICATED: The request does not have valid authentication credentials for the operation.  HTTP Mapping: 401 Unauthorized  - RESOURCE_EXHAUSTED: Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space.  HTTP Mapping: 429 Too Many Requests  - FAILED_PRECONDITION: The operation was rejected because the system is not in a state required for the operation's execution.  For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc.  Service implementors can use the following guidelines to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`:  (a) Use `UNAVAILABLE` if the client can retry just the failing call.  (b) Use `ABORTED` if the client should retry at a higher level. For      example, when a client-specified test-and-set fails, indicating the      client should restart a read-modify-write sequence.  (c) Use `FAILED_PRECONDITION` if the client should not retry until      the system state has been explicitly fixed. For example, if an \"rmdir\"      fails because the directory is non-empty, `FAILED_PRECONDITION`      should be returned since the client should not retry unless      the files are deleted from the directory.  HTTP Mapping: 400 Bad Request  - ABORTED: The operation was aborted, typically due to a concurrency issue such as a sequencer check failure or transaction abort.  See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`.  HTTP Mapping: 409 Conflict  - OUT_OF_RANGE: The operation was attempted past the valid range.  E.g., seeking or reading past end-of-file.  Unlike `INVALID_ARGUMENT`, this error indicates a problem that may be fixed if the system state changes. For example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to read at an offset that is not in the range [0,2^32-1], but it will generate `OUT_OF_RANGE` if asked to read from an offset past the current file size.  There is a fair bit of overlap between `FAILED_PRECONDITION` and `OUT_OF_RANGE`.  We recommend using `OUT_OF_RANGE` (the more specific error) when it applies so that callers who are iterating through a space can easily look for an `OUT_OF_RANGE` error to detect when they are done.  HTTP Mapping: 400 Bad Request  - UNIMPLEMENTED: The operation is not implemented or is not supported/enabled in this service.  HTTP Mapping: 501 Not Implemented  - INTERNAL: Internal errors.  This means that some invariants expected by the underlying system have been broken.  This error code is reserved for serious errors.  HTTP Mapping: 500 Internal Server Error  - UNAVAILABLE: The service is currently unavailable.  This is most likely a transient condition, which can be corrected by retrying with a backoff. Note that it is not always safe to retry non-idempotent operations.  See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`.  HTTP Mapping: 503 Service Unavailable  - DATA_LOSS: Unrecoverable data loss or corruption.  HTTP Mapping: 500 Internal Server Error
class RpcCode {
  /// Instantiate a new enum with the provided [value].
  const RpcCode._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OK = RpcCode._(r'OK');
  static const CANCELLED = RpcCode._(r'CANCELLED');
  static const UNKNOWN = RpcCode._(r'UNKNOWN');
  static const INVALID_ARGUMENT = RpcCode._(r'INVALID_ARGUMENT');
  static const DEADLINE_EXCEEDED = RpcCode._(r'DEADLINE_EXCEEDED');
  static const NOT_FOUND = RpcCode._(r'NOT_FOUND');
  static const ALREADY_EXISTS = RpcCode._(r'ALREADY_EXISTS');
  static const PERMISSION_DENIED = RpcCode._(r'PERMISSION_DENIED');
  static const UNAUTHENTICATED = RpcCode._(r'UNAUTHENTICATED');
  static const RESOURCE_EXHAUSTED = RpcCode._(r'RESOURCE_EXHAUSTED');
  static const FAILED_PRECONDITION = RpcCode._(r'FAILED_PRECONDITION');
  static const ABORTED = RpcCode._(r'ABORTED');
  static const OUT_OF_RANGE = RpcCode._(r'OUT_OF_RANGE');
  static const UNIMPLEMENTED = RpcCode._(r'UNIMPLEMENTED');
  static const INTERNAL = RpcCode._(r'INTERNAL');
  static const UNAVAILABLE = RpcCode._(r'UNAVAILABLE');
  static const DATA_LOSS = RpcCode._(r'DATA_LOSS');

  /// List of all possible values in this [enum][RpcCode].
  static const values = <RpcCode>[
    OK,
    CANCELLED,
    UNKNOWN,
    INVALID_ARGUMENT,
    DEADLINE_EXCEEDED,
    NOT_FOUND,
    ALREADY_EXISTS,
    PERMISSION_DENIED,
    UNAUTHENTICATED,
    RESOURCE_EXHAUSTED,
    FAILED_PRECONDITION,
    ABORTED,
    OUT_OF_RANGE,
    UNIMPLEMENTED,
    INTERNAL,
    UNAVAILABLE,
    DATA_LOSS,
  ];

  static RpcCode? fromJson(dynamic value) => RpcCodeTypeTransformer().decode(value);

  static List<RpcCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RpcCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RpcCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RpcCode] to String,
/// and [decode] dynamic data back to [RpcCode].
class RpcCodeTypeTransformer {
  factory RpcCodeTypeTransformer() => _instance ??= const RpcCodeTypeTransformer._();

  const RpcCodeTypeTransformer._();

  String encode(RpcCode data) => data.value;

  /// Decodes a [dynamic value][data] to a RpcCode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RpcCode? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OK': return RpcCode.OK;
        case r'CANCELLED': return RpcCode.CANCELLED;
        case r'UNKNOWN': return RpcCode.UNKNOWN;
        case r'INVALID_ARGUMENT': return RpcCode.INVALID_ARGUMENT;
        case r'DEADLINE_EXCEEDED': return RpcCode.DEADLINE_EXCEEDED;
        case r'NOT_FOUND': return RpcCode.NOT_FOUND;
        case r'ALREADY_EXISTS': return RpcCode.ALREADY_EXISTS;
        case r'PERMISSION_DENIED': return RpcCode.PERMISSION_DENIED;
        case r'UNAUTHENTICATED': return RpcCode.UNAUTHENTICATED;
        case r'RESOURCE_EXHAUSTED': return RpcCode.RESOURCE_EXHAUSTED;
        case r'FAILED_PRECONDITION': return RpcCode.FAILED_PRECONDITION;
        case r'ABORTED': return RpcCode.ABORTED;
        case r'OUT_OF_RANGE': return RpcCode.OUT_OF_RANGE;
        case r'UNIMPLEMENTED': return RpcCode.UNIMPLEMENTED;
        case r'INTERNAL': return RpcCode.INTERNAL;
        case r'UNAVAILABLE': return RpcCode.UNAVAILABLE;
        case r'DATA_LOSS': return RpcCode.DATA_LOSS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RpcCodeTypeTransformer] instance.
  static RpcCodeTypeTransformer? _instance;
}

