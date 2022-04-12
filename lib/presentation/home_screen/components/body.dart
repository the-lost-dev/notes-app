
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/entities/note_model.dart';
import 'package:notes_app/utils/utils.dart';

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
    return storedNotes!.isEmpty
        ? Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 20,
              vertical: SizeConfig.blockSizeVertical * 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'images/empty.svg',
                  height: SizeConfig.blockSizeVertical * 50,
                ),
                Text(
                  Strings.emptyNoteTextHeading,
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 1.5,
                ),
                Text(
                  Strings.emptyNoteText,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          )
        : Container(
            child: Text(
              'Me',
              style: Theme.of(context).textTheme.headline1,
            ),
          );
  }
}
