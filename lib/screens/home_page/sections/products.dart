import 'package:challange1/components/product_card.dart';
import 'package:challange1/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Featured products",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            const FaIcon(
              FontAwesomeIcons.arrowRight,
              color: Colors.grey,
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Container(
          width: double.infinity,
          child: Column(
            children: [
              for (var i = 0; i < 3; i++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProductCard(
                      name: products[i].name,
                      price: products[i].price,
                      weight: products[i].weiht,
                      image: products[i].image,
                    ),
                    ProductCard(
                      name: products[(products.length ~/ 2) + i].name,
                      price: products[(products.length ~/ 2) + i].price,
                      weight: products[(products.length ~/ 2) + i].weiht,
                      image: products[(products.length ~/ 2) + i].image,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}
