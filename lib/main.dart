import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/entities/note.dart';
import 'package:path_provider/path_provider.dart';

import 'root.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appDocumentDir = await getApplicationDocumentsDirectory();

  /// initializes the hive local storage
  await Hive.initFlutter(appDocumentDir.path);

  /// registering the hive type adapter
  Hive.registerAdapter(NoteAdapter());
  runApp(const ProviderScope(child: NotesApp()));
}

///  APP FEATURES 
/// Create Notes : Create Notes that store locally to device.
/// Edit Notes: Edit Notes that were previously created.
/// Pinnable Notes: Pin Notes to the top of the list.
/// User Stats: Stats for the user's notes such as total  notes,  words written.
/// Search Notes: Filter Out Notes with the search bar.
/// Delete Notes: Delte notes no longer in use.
/// When the app is minimized or closed the note state should be saved, 
/// and when resumed the state(data) should be retrieved

/// Planning

/// 
/// STEPS
/// Add animations
/// Make app responsive
/// Face Id to unlock notes
/// 