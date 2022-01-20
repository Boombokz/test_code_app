import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    Key? key,
    this.onTap,
    required this.color,
    required this.text,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
      ),
      onPressed: () => onTap?.call(),
      child: Text(text),
    );
  }
}
