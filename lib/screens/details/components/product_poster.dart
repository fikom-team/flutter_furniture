import 'package:flutter/material.dart';
import 'package:furniture/models/product.dart';
import 'package:furniture/screens/details/components/list_color.dart';

import '../../../constants.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key key,
    @required this.size,
    this.product,
  }) : super(key: key);

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
          height: size.height * 0.3,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: size.height * 0.5,
                width: size.width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [kDefaultShadow],
                ),
              ),
              Center(
                child: Image.asset(
                  product.image,
                  height: size.height * 0.3,
                  width: size.width * 0.5,
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        ),
        ListColor(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                "Rp ${product.price.toString()}K",
                style: TextStyle(
                    color: kSecondaryColor, fontWeight: FontWeight.w800),
              ),
              Text(
                product.description,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        )
      ],
    );
  }
}
