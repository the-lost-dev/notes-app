import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/entities/note_model.dart';
import 'package:notes_app/utils/utils.dart';

import 'home_components.dart';

class Body extends ConsumerStatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BodyState();
}

class _BodyState extends ConsumerState<Body> {
  Box<NoteModel>? storedNotes;

  @override
  void initState() {
    super.initState();
    storedNotes = Hive.box<NoteModel>(Strings.noteBox);
  }

  @override
  Widget build(BuildContext context) {
    if (storedNotes!.isEmpty) {
      return const EmptyScreen();
    } else {
      return Container(
        child: Text(
          'Me',
          style: Theme.of(context).textTheme.headline1,
        ),
      );
    }
  }
}

