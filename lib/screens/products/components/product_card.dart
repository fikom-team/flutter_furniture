import 'package:flutter/material.dart';
import 'package:furniture/models/product.dart';
import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.itemIndex,
    this.product,
    this.press,
  }) : super(key: key);

  final itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    /**
     * Dynamic Size Of Screen  
     * 
     */
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 136,
              decoration: BoxDecoration(
                  color: itemIndex.isEven ? kPrimaryColor : kSecondaryColor,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [kDefaultShadow]),
              child: Container(
                margin: EdgeInsets.only(right: kDefaultPadding * .4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            /**
             * Image products On Card 
             */
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 160,
                width: 200,
                child: Image.asset(product.image),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding,
                      ),
                      child: Text(product.title),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5,
                        vertical: kDefaultPadding / 4,
                      ),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Text(
                        "\Rp.${product.price}K",
                        style: Theme.of(context).textTheme.button,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
