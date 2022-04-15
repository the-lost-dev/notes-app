import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/presentation/home_screen/home_screen.dart';
import 'package:notes_app/services/database.dart';

class NewNoteProvider extends ChangeNotifier {
  final String? noteTitle;
  final String? noteContent;
  final BuildContext context;
  final HiveDatabaseService database;

  late bool? _isNotEmpty;

  NewNoteProvider(
    this.context,
    this.database, {
    this.noteTitle,
    this.noteContent,
  });

  Future<bool> checkIfNoteIsNotEmpty() async {
    if (noteTitle!.isEmpty || noteContent!.isEmpty) {
      await database.createNewNote(
        noteTitle: noteTitle,
        noteContent: noteContent,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Note Saved'),
        ),
      );
      Navigator.of(context).pop();
      await Navigator.of(context).pushNamed(HomeScreen.route);
      _isNotEmpty = true;
      notifyListeners();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Empty Note Discarded'),
        ),
      );
      Navigator.of(context).pop();
      await Navigator.of(context).pushNamed(HomeScreen.route);
      _isNotEmpty = false;
      notifyListeners();
    }
    return _isNotEmpty!;
  }
}

final newNoteProvider = ChangeNotifierProvider((ref) {
  return NewNoteProvider(context, database,);
});
