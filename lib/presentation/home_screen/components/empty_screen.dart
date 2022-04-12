import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notes_app/utils/utils.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
