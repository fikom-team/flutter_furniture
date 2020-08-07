import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/models/product.dart';
import 'package:furniture/screens/details/components/product_poster.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
    @required this.product,
  }) : super(key: key);

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(22),
              bottomRight: Radius.circular(22),
            ),
            color: kBackgroundColor,
          ),
          child: ProductPoster(
            size: size,
            product: product,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 2,
            vertical: kDefaultPadding,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 2,
          ),
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/chat.svg",
                height: 24,
              ),
              SizedBox(width: kDefaultPadding / 2),
              Text(
                "Chat",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Spacer(),
              FlatButton.icon(
                onPressed: null,
                icon: SvgPicture.asset("assets/icons/shopping-bag.svg"),
                label: Text(
                  "Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
