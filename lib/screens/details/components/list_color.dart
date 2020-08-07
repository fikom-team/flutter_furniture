import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'color_dots.dart';

class ListColor extends StatelessWidget {
  const ListColor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorDot(
            isSelected: true,
            color: Colors.teal,
          ),
          ColorDot(
            color: kPrimaryColor,
          ),
          ColorDot(
            color: Colors.greenAccent,
          ),
        ],
      ),
    );
  }
}
