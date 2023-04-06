import 'package:http_interceptor/http/interceptor_contract.dart';
import 'package:http_interceptor/models/response_data.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:logger/logger.dart';

class LoggingInterceptor implements InterceptorContract {
  Logger logger = Logger();

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    logger.v("Base URL: ${data.baseUrl}\nHedears: ${data.headers}\n\n Method: ${data.method}\nCorpo: ${data.body}");
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    // ignore: prefer_interpolation_to_compose_strings
    logger.v("Status Code: " + data.statusCode.toString() + "\n\nHeaders: " + data.headers.toString() + "\n\nBody: " + data.body!);
    return data;
  }
}
