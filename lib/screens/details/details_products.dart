import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/models/product.dart';

import 'components/body.dart';

class DetailProducts extends StatelessWidget {
  final Product product;
  const DetailProducts({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    /**
     * Dynamic Size of Screen 
     * Take All Size Of Screen 
     */
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(size: size, product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: "Back To Main Page",
      ),
      title: Text(
        "Back",
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart_with_item.svg"),
          onPressed: null,
        )
      ],
    );
  }
}
