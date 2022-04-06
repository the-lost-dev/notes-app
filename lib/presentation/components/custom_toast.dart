import 'package:flutter/material.dart';

class CustomToastMessageWidget extends StatelessWidget {
  const CustomToastMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

const snackBar = SnackBar(
  content: Text('Note Saved Successfully!'),
  // action: SnackBarAction(label: label, onPressed: onPressed),
);
