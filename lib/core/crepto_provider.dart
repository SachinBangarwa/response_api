import 'package:flutter/cupertino.dart';
import 'package:response_api/modal/response_modal.dart';

class CreptoProvider with ChangeNotifier {
  List<ResponseCode> list = [];

  List<ResponseCode> get listData => list;

  void fetData(data) {
    list = data;
    notifyListeners();
  }
}