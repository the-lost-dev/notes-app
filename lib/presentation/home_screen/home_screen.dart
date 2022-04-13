import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/presentation/new_note_screen/new_note_screen.dart';
import 'package:notes_app/utils/utils.dart';

import 'components/body.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const route = 'homeRoute';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: const Body(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.fabBgColor,
        foregroundColor: AppColors.primaryColor,
        tooltip: Strings.tooltipText,
        elevation: fabElevation,
        child: const Icon(Icons.add),
        onPressed: () => Navigator.of(context).pushNamed(NewNoteScreen.route),
        ),
      );
  }
}
