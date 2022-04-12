import 'package:flutter/material.dart';
import 'package:notes_app/presentation/note_text_area.dart';
import 'package:notes_app/utils/theme.dart';

import 'presentation/home_screen/home_screen.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NotesAppTheme.lightTheme();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      routes: {
        HomeScreen.route: (context) => const HomeScreen(),
        CreateNoteScreen.route: (context) => const CreateNoteScreen(),
      },
      home: const HomeScreen(),
    );
  }
}
