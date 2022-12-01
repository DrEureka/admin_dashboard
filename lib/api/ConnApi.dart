// ignore: file_names
import '../services/local_storage.dart';
import 'package:dio/dio.dart';

class ConnApi {
  static final Dio _dio = Dio();

  static void configureDio() {
    //falta ingresar la url de la api php.
    _dio.options.baseUrl = 'http://localhost:8080/api';

    // Configurar headedrs peticiones
    _dio.options.headers = {
      'x-token': LocalStorage.prefs.getString('token') ?? ''
    };
  }

  //el path es el endpoint de la api en este caso hago un get
  static Future httpGet(String path) async {
    try {
      print('La base esta conectada');
      final resp = await _dio.get(path);
      return resp.data;
    } catch (e) {
      print('Error get: $e');
    }
  }

//prepare una conexion post para el registro
  static Future post(String path, Map<String, dynamic> data) async {
    final formData = FormData.fromMap(data);
    try {
      final resp = await _dio.post(path, data: formData);

      return resp.data;
    } catch (e) {
      print('Error POST: $e');
    }
  }
}
