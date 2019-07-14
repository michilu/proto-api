# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
import grpc

from proto import message_pb2 as proto_dot_message__pb2


class exampleStub(object):
  # missing associated documentation comment in .proto file
  pass

  def __init__(self, channel):
    """Constructor.

    Args:
      channel: A grpc.Channel.
    """
    self.query = channel.unary_unary(
        '/proto.example/query',
        request_serializer=proto_dot_message__pb2.Request.SerializeToString,
        response_deserializer=proto_dot_message__pb2.Response.FromString,
        )


class exampleServicer(object):
  # missing associated documentation comment in .proto file
  pass

  def query(self, request, context):
    # missing associated documentation comment in .proto file
    pass
    context.set_code(grpc.StatusCode.UNIMPLEMENTED)
    context.set_details('Method not implemented!')
    raise NotImplementedError('Method not implemented!')


def add_exampleServicer_to_server(servicer, server):
  rpc_method_handlers = {
      'query': grpc.unary_unary_rpc_method_handler(
          servicer.query,
          request_deserializer=proto_dot_message__pb2.Request.FromString,
          response_serializer=proto_dot_message__pb2.Response.SerializeToString,
      ),
  }
  generic_handler = grpc.method_handlers_generic_handler(
      'proto.example', rpc_method_handlers)
  server.add_generic_rpc_handlers((generic_handler,))