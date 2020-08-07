import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/screens/products/components/body.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppbar(),
      body: Body(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text("Dashboard"),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: null,
        ),
      ],
    );
  }
}
