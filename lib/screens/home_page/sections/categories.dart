import 'package:challange1/components/category_item.dart';
import 'package:challange1/model/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 23.sp,
                fontWeight: FontWeight.w600,
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
        SizedBox(
          height: 65.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: catigories.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    CategoryItem(
                      categoryIcon: SvgPicture.asset(
                        catigories[index].icon,
                        alignment: Alignment.bottomCenter,
                      ),
                      categoryName: catigories[index].name,
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
