// import 'package:hive/hive.dart';
// import 'package:notes_app/entities/note_model.dart';

// class HiveDatabaseService {
//   Future<void> createNote(
//     Note? newNote,
//   ) async {
//     final note = await Hive.openBox<Note>('${newNote?.dateTime}');
//     note.add(newNote!);
//     await note.close();
//     print(note);
//   }
// }
