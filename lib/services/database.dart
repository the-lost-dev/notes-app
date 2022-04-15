import 'package:hive/hive.dart';
import 'package:notes_app/entities/note_model.dart';
import 'package:notes_app/utils/utils.dart';

class HiveDatabaseService {
  final Box<NoteModel>? _storeData = Hive.box<NoteModel>(Strings.noteBox);

  Future<void> createNewNote({String? noteTitle, String? noteContent}) async {
    final note = NoteModel(
      heading: noteTitle,
      content: noteContent,
      dateTime: DateTime.now(),
    );
    await _storeData!.add(note);
  }
}

// final databaseProvider = Provider<HiveDatabaseService?>((ref) {
//   final auth = ref.watch(authStateChangesProvider);

//   if (auth.asData?.value?.uid != null) {
//     return DatabaseService(uid: auth.asData!.value!.uid);
//   }

//   return null;
// });