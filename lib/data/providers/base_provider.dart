import 'package:app/common/network/extension.dart';
import 'package:dio/dio.dart';
// import 'package:get/get.dart' hide Response;

import '../../common/network/http_client.dart';
import '../../common/network/network_util.dart';

typedef Decoder<T> = T Function(dynamic data);

abstract class BaseProvider {
  final Dio httpClient = HttpClient().httpClient;

  String baseUrl = '';

  Response<T?> _decode<T>(Response response) {
    if (response.data is List && listingDecoder != null) {
      return response.attachDecoder((json) => listingDecoder!(json));
    }

    if (response.data is String) {
      return response.attachStringDecoder(response.data);
    }

    if (response.data is bool) {
      return response.attachStringDecoder(response.data.toString());
    }

    return response.attachDecoder((json) => decoder!(json));
  }

  Decoder? get decoder;

  Decoder? paginationDecoder;

  Decoder? listingDecoder;

  Future<Response<T?>> getNext<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    if (NetworkUtil().hasConnect) {
      return _decode(await httpClient.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      ));
    } else {
      _sendNetworkError();
      return Response(requestOptions: RequestOptions(path: path));
    }
  }

  Future<Response<T?>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    if (NetworkUtil().hasConnect) {
      return _decode(await httpClient.get(
        baseUrl + path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      ));
    } else {
      _sendNetworkError();
      return Response(requestOptions: RequestOptions(path: path));
    }
  }

  Future<Response<T?>> post<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    ProgressCallback? onSendProgress,
  }) async {
    if (NetworkUtil().hasConnect) {
      return _decode(await httpClient.post(
        baseUrl + path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onReceiveProgress,
      ));
    } else {
      _sendNetworkError();
      return Response(requestOptions: RequestOptions(path: path));
    }
  }

  Future<Response<T?>> patch<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    ProgressCallback? onSendProgress,
  }) async {
    if (NetworkUtil().hasConnect) {
      return _decode(await httpClient.patch(
        baseUrl + path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onReceiveProgress,
      ));
    } else {
      _sendNetworkError();
      return Response(requestOptions: RequestOptions(path: path));
    }
  }

  Future<Response<T?>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    ProgressCallback? onSendProgress,
  }) async {
    if (NetworkUtil().hasConnect) {
      return _decode(await httpClient.put(
        baseUrl + path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onReceiveProgress,
      ));
    } else {
      _sendNetworkError();
      return Response(requestOptions: RequestOptions(path: path));
    }
  }

  Future<Response<T?>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    if (NetworkUtil().hasConnect) {
      return _decode(await httpClient.delete(
        baseUrl + path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      ));
    } else {
      _sendNetworkError();
      return Response(requestOptions: RequestOptions(path: path));
    }
  }

  Future<Response<T?>> request<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    if (NetworkUtil().hasConnect) {
      return _decode(await httpClient.request(
        baseUrl + path,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ));
    } else {
      _sendNetworkError();
      return Response(requestOptions: RequestOptions(path: path));
    }
  }

  void _sendNetworkError() {
    // TODO SHOW DIALOG NETWORK ERROR
  }
}
