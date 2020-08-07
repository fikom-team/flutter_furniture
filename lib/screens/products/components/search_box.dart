import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
    this.onChange,
  }) : super(key: key);

  final ValueChanged onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        onChanged: onChange,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: SvgPicture.asset("assets/icons/search.svg"),
          hintText: "Search Furniture",
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
