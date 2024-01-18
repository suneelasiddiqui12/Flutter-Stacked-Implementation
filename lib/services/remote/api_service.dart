
import 'package:dio/dio.dart';
import '../../utils/https_status_code.dart';
import 'api_client.dart';

class ApiService {
  late ApiClient _apiClient;

  ApiService() {
    var dio = Dio();
    _apiClient = ApiClient(dio);
  }


Future<dynamic> getMockData() async{
    final response = await _apiClient.getReq('/');
    return null;
}



}
