import 'package:dio/dio.dart';

import 'fl_api_header.dart';
import 'fl_api_response_type.dart';

typedef OnPercentage = void Function(int, int);

class FlApiOption {
  const FlApiOption({
    this.query,
    this.onSendPercentage,
    this.onRecievePercentage,
    this.header = const FlApiHeader.basic(),
    this.responseType = const FlApiResponseType.json(),
  });

  factory FlApiOption.fromDio(RequestOptions options) => FlApiOption(
        //! HARD CODED
        header: FlApiHeader.basic(),
        query: options.queryParameters,
        responseType: options.responseType.toFlApi,
        onSendPercentage: options.onSendProgress,
        onRecievePercentage: options.onReceiveProgress,
      );

  final FlApiHeader header;
  final Map<String, dynamic> query;
  final OnPercentage onSendPercentage;
  final OnPercentage onRecievePercentage;
  final FlApiResponseType responseType;
}

extension FlApiOptionEx on FlApiOption {
  RequestOptions get requestOptions => RequestOptions(
        onReceiveProgress: onRecievePercentage,
        responseType: responseType.toDio,
        onSendProgress: onSendPercentage,
        queryParameters: query,
        headers: header.toMap,
      );
}
