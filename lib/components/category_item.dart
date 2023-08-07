import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.categoryIcon, required this.categoryName});

  final SvgPicture categoryIcon;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 35.w,
          height: 35.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            // color: Colors.grey[300],
          ),
          child: categoryIcon,
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          categoryName,
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
