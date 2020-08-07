import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3),
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? Color(0xFF707070) : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
