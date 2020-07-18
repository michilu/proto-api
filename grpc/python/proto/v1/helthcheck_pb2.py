# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/v1/helthcheck.proto

from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from google.api import annotations_pb2 as google_dot_api_dot_annotations__pb2
from google.protobuf import empty_pb2 as google_dot_protobuf_dot_empty__pb2
from proto.v1 import message_pb2 as proto_dot_v1_dot_message__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='proto/v1/helthcheck.proto',
  package='proto.v1',
  syntax='proto3',
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_pb=b'\n\x19proto/v1/helthcheck.proto\x12\x08proto.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x16proto/v1/message.proto\"J\n%HealthCheckServiceHealthCheckResponse\x12!\n\x05value\x18\x01 \x01(\x0b\x32\x12.proto.v1.Response2\x82\x01\n\x12HealthCheckService\x12l\n\x0bHealthCheck\x12\x16.google.protobuf.Empty\x1a/.proto.v1.HealthCheckServiceHealthCheckResponse\"\x14\x82\xd3\xe4\x93\x02\x0e\x12\x0c/healthCheckb\x06proto3'
  ,
  dependencies=[google_dot_api_dot_annotations__pb2.DESCRIPTOR,google_dot_protobuf_dot_empty__pb2.DESCRIPTOR,proto_dot_v1_dot_message__pb2.DESCRIPTOR,])




_HEALTHCHECKSERVICEHEALTHCHECKRESPONSE = _descriptor.Descriptor(
  name='HealthCheckServiceHealthCheckResponse',
  full_name='proto.v1.HealthCheckServiceHealthCheckResponse',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='value', full_name='proto.v1.HealthCheckServiceHealthCheckResponse.value', index=0,
      number=1, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=122,
  serialized_end=196,
)

_HEALTHCHECKSERVICEHEALTHCHECKRESPONSE.fields_by_name['value'].message_type = proto_dot_v1_dot_message__pb2._RESPONSE
DESCRIPTOR.message_types_by_name['HealthCheckServiceHealthCheckResponse'] = _HEALTHCHECKSERVICEHEALTHCHECKRESPONSE
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

HealthCheckServiceHealthCheckResponse = _reflection.GeneratedProtocolMessageType('HealthCheckServiceHealthCheckResponse', (_message.Message,), {
  'DESCRIPTOR' : _HEALTHCHECKSERVICEHEALTHCHECKRESPONSE,
  '__module__' : 'proto.v1.helthcheck_pb2'
  # @@protoc_insertion_point(class_scope:proto.v1.HealthCheckServiceHealthCheckResponse)
  })
_sym_db.RegisterMessage(HealthCheckServiceHealthCheckResponse)



_HEALTHCHECKSERVICE = _descriptor.ServiceDescriptor(
  name='HealthCheckService',
  full_name='proto.v1.HealthCheckService',
  file=DESCRIPTOR,
  index=0,
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_start=199,
  serialized_end=329,
  methods=[
  _descriptor.MethodDescriptor(
    name='HealthCheck',
    full_name='proto.v1.HealthCheckService.HealthCheck',
    index=0,
    containing_service=None,
    input_type=google_dot_protobuf_dot_empty__pb2._EMPTY,
    output_type=_HEALTHCHECKSERVICEHEALTHCHECKRESPONSE,
    serialized_options=b'\202\323\344\223\002\016\022\014/healthCheck',
    create_key=_descriptor._internal_create_key,
  ),
])
_sym_db.RegisterServiceDescriptor(_HEALTHCHECKSERVICE)

DESCRIPTOR.services_by_name['HealthCheckService'] = _HEALTHCHECKSERVICE

# @@protoc_insertion_point(module_scope)