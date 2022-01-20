import 'package:flutter/material.dart';
import 'package:test_project_pro_area/data/model/count_button.dart';

class ButtonRepository {
  List<CountButton> buttonList = [
    CountButton(
      id: 0,
      count: 0,
      color: Colors.red,
    ),
    CountButton(
      id: 1,
      count: 0,
      color: Colors.yellow,
    ),
    CountButton(
      id: 2,
      count: 0,
      color: Colors.green,
    ),
  ];

  void deleteButton() {
    if (buttonList.isNotEmpty) {
      buttonList.removeAt(0);
    }
  }

  void addCount(int index) {
    buttonList[index].count = (buttonList[index].count ?? 0) + 1;
  }
}
