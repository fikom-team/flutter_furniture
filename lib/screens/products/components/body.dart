import 'package:flutter/material.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/models/product.dart';
import 'package:furniture/screens/details/details_products.dart';
import 'package:furniture/screens/products/components/category_list.dart';
import 'package:furniture/screens/products/components/product_card.dart';
import 'package:furniture/screens/products/components/search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SearchBox(onChange: (value) => print(value)),
          CategoryList(),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                // Background
                Container(
                  margin: EdgeInsets.only(top: kDefaultPadding * 4.4),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: products.length,
                  itemBuilder: (context, int index) {
                    return ProductCard(
                      itemIndex: index,
                      product: products[index],
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailProducts(product: products[index]),
                          ),
                        );
                      },
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
