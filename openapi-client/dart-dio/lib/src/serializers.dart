//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/check_response_serving_status.dart';
import 'package:openapi/src/model/protov1_response.dart';
import 'package:openapi/src/model/rpc_code.dart';
import 'package:openapi/src/model/v1_check_response.dart';
import 'package:openapi/src/model/v1_example_service_query_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  CheckResponseServingStatus,
  Protov1Response,
  RpcCode,
  V1CheckResponse,
  V1ExampleServiceQueryResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
