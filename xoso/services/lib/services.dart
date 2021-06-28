
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'common/constant.dart';
import 'init.dart';

Future<void> initServices(Interceptor createInterceptor<T>()) async {
  GetIt.I.registerSingleton<ApiServices>(
      ApiServices(_createDioWithInterceptor<ApiServices>(createInterceptor), baseUrl: BASE_API_URL));
}

Dio _createDioWithInterceptor<T>(Interceptor createInterceptor<T>()){
  if(createInterceptor == null) return Dio();
  final interceptor = createInterceptor<T>();
  if(interceptor == null) return Dio();
  return Dio()..interceptors.add(interceptor);
}



Interceptor get _defaultInterceptor {
  return InterceptorsWrapper(
    onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {
      Map<String, String> headers = new Map();
      headers['content-type'] = 'application/json';
      // await SharePreferUtils.getAccessToken().then((String token) async => {
      //   if (token != null)
      //   // ignore: always_specify_types
      //     {
      //       await SharePreferUtils.getUserInfo().then((value) => {
      //         headers['Authorization'] =
      //         '${value.userId}|${Constants.VI}|$token'
      //       })
      //     }
      // });
      options.headers = headers;
      print("#################################### headers: $headers");
      print("#################################### request: ${options.data}");
      return handler.next(options);
    },
    onResponse: (Response response, ResponseInterceptorHandler handler,) async {
      return handler.next(response);
    },
    onError: (DioError err, ErrorInterceptorHandler handler,) async {

      return handler.next(err);
    }
  );
}


Interceptor createInterceptor<T>(){
  // if(T == ApiServices) return _defaultInterceptor;
  // return null;
  return _defaultInterceptor;
}


