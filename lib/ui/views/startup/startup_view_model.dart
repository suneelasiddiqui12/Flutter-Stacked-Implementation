import 'package:stacked/stacked.dart';


// business logic And view state

class StartUpViewModel extends BaseViewModel {

  final String _title = "StartUp View Model";

  String get title => '$_title $_counter';

  int _counter = 0;

  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }
}
