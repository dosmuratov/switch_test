import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  Map<String, String> data = {};
  bool get dataIsEmpty => data.isEmpty ? true : false;
  Map<String, String> get alldata => data;
  addDatas(String mode) {
    data.addAll(
      {
        '${DateTime.now().hour}-${DateTime.now().minute}': mode,
      },
    );
  }
}
