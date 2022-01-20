import 'package:flutter/material.dart';

class RemoveItemButton extends StatelessWidget {
  const RemoveItemButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.red),
      ),
      onPressed: () => onTap?.call(),
      child: const Text('Remove Top'),
    );
  }
}
