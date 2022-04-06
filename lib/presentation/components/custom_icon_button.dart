import 'package:flutter/material.dart';
import 'package:notes_app/utils/utils.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: AppColors.splashColor,
      splashRadius: splashRadius,
      onPressed: onPressed,
      icon: icon,
    );
  }
}
