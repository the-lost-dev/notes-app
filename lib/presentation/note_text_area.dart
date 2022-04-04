import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.arrow_back),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.thumbtack,
                    color: Colors.white,
                    size: 25,
                  )),
              IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.bookmark,
                  color: Color(0xFF1F1F1F),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.archive_outlined,
                ),
              ),
            ],
          ),
          Text(
            'Heading',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 3,
          ),
          Expanded(
            flex: 2,
            child: TextField(
              keyboardType: TextInputType.multiline,
              textAlign: TextAlign.left,
              textInputAction: TextInputAction.done,
              cursorColor: Colors.white,
              style: Theme.of(context).textTheme.bodyText1,
              cursorHeight: 25,
              cursorWidth: 1,
              maxLines: null,
              autofocus: true,
              decoration: InputDecoration(
                hintText: Strings.hintText,
                hintStyle: Theme.of(context).textTheme.bodyText1,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
