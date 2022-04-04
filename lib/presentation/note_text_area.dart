import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/app_colors.dart';
import 'package:notes_app/utils/utils.dart';

class NoteTextArea extends ConsumerWidget {
  const NoteTextArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.blockSizeHorizontal * 3,
        vertical: SizeConfig.blockSizeVertical * 1.5,
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.arrow_back),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.thumbtack,
                    color: Colors.white,
                  )),
              IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.bookmark,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.boxArchive,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Expanded(
            flex: 2,
            child: TextField(
              keyboardType: TextInputType.multiline,
              textAlign: TextAlign.left,
              textInputAction: TextInputAction.done,
              cursorColor: Colors.white,
              cursorHeight: 25,
              
              maxLines: null,
              autofocus: true,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
