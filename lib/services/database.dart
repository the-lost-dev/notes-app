import 'package:hive/hive.dart';
import 'package:notes_app/entities/note.dart';

class HiveDatabaseService {
  Future<void> createNote({
    required DateTime date,
    required Note note,
  }) async {
    final notes = await Hive.openBox<Note>(date.toString());

    notes.add(note);
    print(notes);
  }
}
