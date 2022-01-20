import 'package:flutter/material.dart';
import 'package:test_project_pro_area/data/model/count_button.dart';
import 'package:test_project_pro_area/ui/components/buttons/simple_button.dart';

class ButtonList extends StatelessWidget {
  const ButtonList({
    Key? key,
    this.onTap,
    required this.buttonList,
  }) : super(key: key);

  final Function(int)? onTap;
  final List<CountButton> buttonList;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SimpleButton(
              color: buttonList[index].color ?? Colors.white,
              onTap: () => onTap?.call(index),
              text: '~ [${buttonList[index].count}] ~ ');
        },
        itemCount: buttonList.length,
      ),
    );
  }
}
