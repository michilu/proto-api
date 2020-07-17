# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/v1/service.proto

from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from github.com.mwitkow.go_proto_validators import validator_pb2 as github_dot_com_dot_mwitkow_dot_go__proto__validators_dot_validator__pb2
from google.api import annotations_pb2 as google_dot_api_dot_annotations__pb2
from proto.v1 import message_pb2 as proto_dot_v1_dot_message__pb2
from protoc_gen_swagger.options import annotations_pb2 as protoc__gen__swagger_dot_options_dot_annotations__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='proto/v1/service.proto',
  package='proto.v1',
  syntax='proto3',
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_pb=b'\n\x16proto/v1/service.proto\x12\x08proto.v1\x1a\x36github.com/mwitkow/go-proto-validators/validator.proto\x1a\x1cgoogle/api/annotations.proto\x1a\x16proto/v1/message.proto\x1a,protoc-gen-swagger/options/annotations.proto\"\x87\x01\n\x1a\x45xampleServiceQueryRequest\x12i\n\x02id\x18\x01 \x01(\tB]\x92\x41Q\x80\x01\x01\x8a\x01K[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\xe2\xdf\x1f\x05X\x01\x90\x01\x04\"@\n\x1b\x45xampleServiceQueryResponse\x12!\n\x05value\x18\x01 \x01(\x0b\x32\x12.proto.v1.Response2\x83\x01\n\x0e\x45xampleService\x12q\n\x05Query\x12$.proto.v1.ExampleServiceQueryRequest\x1a%.proto.v1.ExampleServiceQueryResponse\"\x1b\x82\xd3\xe4\x93\x02\x15\"\x10/v1/example/{id}:\x01*b\x06proto3'
  ,
  dependencies=[github_dot_com_dot_mwitkow_dot_go__proto__validators_dot_validator__pb2.DESCRIPTOR,google_dot_api_dot_annotations__pb2.DESCRIPTOR,proto_dot_v1_dot_message__pb2.DESCRIPTOR,protoc__gen__swagger_dot_options_dot_annotations__pb2.DESCRIPTOR,])




_EXAMPLESERVICEQUERYREQUEST = _descriptor.Descriptor(
  name='ExampleServiceQueryRequest',
  full_name='proto.v1.ExampleServiceQueryRequest',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='id', full_name='proto.v1.ExampleServiceQueryRequest.id', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=b'\222AQ\200\001\001\212\001K[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\342\337\037\005X\001\220\001\004', file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
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
  serialized_start=193,
  serialized_end=328,
)


_EXAMPLESERVICEQUERYRESPONSE = _descriptor.Descriptor(
  name='ExampleServiceQueryResponse',
  full_name='proto.v1.ExampleServiceQueryResponse',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='value', full_name='proto.v1.ExampleServiceQueryResponse.value', index=0,
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
  serialized_start=330,
  serialized_end=394,
)

_EXAMPLESERVICEQUERYRESPONSE.fields_by_name['value'].message_type = proto_dot_v1_dot_message__pb2._RESPONSE
DESCRIPTOR.message_types_by_name['ExampleServiceQueryRequest'] = _EXAMPLESERVICEQUERYREQUEST
DESCRIPTOR.message_types_by_name['ExampleServiceQueryResponse'] = _EXAMPLESERVICEQUERYRESPONSE
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

ExampleServiceQueryRequest = _reflection.GeneratedProtocolMessageType('ExampleServiceQueryRequest', (_message.Message,), {
  'DESCRIPTOR' : _EXAMPLESERVICEQUERYREQUEST,
  '__module__' : 'proto.v1.service_pb2'
  # @@protoc_insertion_point(class_scope:proto.v1.ExampleServiceQueryRequest)
  })
_sym_db.RegisterMessage(ExampleServiceQueryRequest)

ExampleServiceQueryResponse = _reflection.GeneratedProtocolMessageType('ExampleServiceQueryResponse', (_message.Message,), {
  'DESCRIPTOR' : _EXAMPLESERVICEQUERYRESPONSE,
  '__module__' : 'proto.v1.service_pb2'
  # @@protoc_insertion_point(class_scope:proto.v1.ExampleServiceQueryResponse)
  })
_sym_db.RegisterMessage(ExampleServiceQueryResponse)


_EXAMPLESERVICEQUERYREQUEST.fields_by_name['id']._options = None

_EXAMPLESERVICE = _descriptor.ServiceDescriptor(
  name='ExampleService',
  full_name='proto.v1.ExampleService',
  file=DESCRIPTOR,
  index=0,
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_start=397,
  serialized_end=528,
  methods=[
  _descriptor.MethodDescriptor(
    name='Query',
    full_name='proto.v1.ExampleService.Query',
    index=0,
    containing_service=None,
    input_type=_EXAMPLESERVICEQUERYREQUEST,
    output_type=_EXAMPLESERVICEQUERYRESPONSE,
    serialized_options=b'\202\323\344\223\002\025\"\020/v1/example/{id}:\001*',
    create_key=_descriptor._internal_create_key,
  ),
])
_sym_db.RegisterServiceDescriptor(_EXAMPLESERVICE)

DESCRIPTOR.services_by_name['ExampleService'] = _EXAMPLESERVICE

# @@protoc_insertion_point(module_scope)
