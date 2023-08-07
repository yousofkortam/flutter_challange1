import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search keywords..",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
          size: 33.sp,
        ),
        // suffixIcon: Icon(
        //   Icons.settings,
        //   color: Colors.grey,
        //   size: 27.sp,
        // ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    );
  }
}
