import 'package:challange1/components/search_text_field.dart';
import 'package:challange1/screens/home_page/sections/categories.dart';
import 'package:challange1/screens/home_page/sections/photo_preview.dart';
import 'package:challange1/screens/home_page/sections/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.w,
              color: Colors.green,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
              size: 30.w,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.heart,
              size: 30.w,
              color: Colors.grey,
            ),
            label: 'Favorits',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.cartShopping,
              size: 30.w,
              color: Colors.grey,
            ),
            label: 'Cart',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},

      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(14.w),
          child: Column(
            children: [
              const SearchTextField(),
              SizedBox(
                height: 16.h,
              ),
              const PhotoPreview(),
              SizedBox(
                height: 16.h,
              ),
              const Categories(),
              SizedBox(
                height: 16.h,
              ),
              const Products(),
            ],
          ),
        ),
      ],
    );
  }
}
