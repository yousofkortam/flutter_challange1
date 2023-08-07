import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.name,
      required this.price,
      required this.weight,
      required this.image});

  final String name;
  final double price;
  final double weight;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.w),
      child: Container(
        width: 155.w,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Container(
                //   width: ,
                // ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.heart,
                  ),
                )
              ],
            ),
            Image(
              image: AssetImage(image),
              width: 90.w,
              height: 80.w,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              '\$$price',
              style: const TextStyle(color: Colors.green),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              '$weight kg',
              style: const TextStyle(color: Colors.grey),
            ),
            Divider(
              color: Colors.grey[600],
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.cartShopping,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Text(
                    "Add to cart",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
