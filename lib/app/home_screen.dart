import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/app_colors.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.utilityColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.utilityColor,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: const SafeArea(
        child: Center(
          child: Text('data'),
        ),
      ),
    );
  }
}
