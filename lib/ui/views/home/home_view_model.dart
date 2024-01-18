import 'package:flutter_stacked_implementation/app/app.locator.dart';
import 'package:flutter_stacked_implementation/services/remote/api_service.dart';
import 'package:stacked/stacked.dart';


class HomeViewModel extends BaseViewModel {

  ApiService apiService = locator<ApiService>();

  final String _title = "Home View";
  String get title => _title;

  Future getMockData() async{

   final response =  apiService.getMockData();

  }

}
