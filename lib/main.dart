import 'package:challange1/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => SafeArea(
        child: MaterialApp(
          title: 'Fruite shop',
          theme: ThemeData(
            switchTheme: SwitchThemeData(
              thumbColor: MaterialStateProperty.all<Color>(Colors.green),
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        ),
      ),
    );
  }
}
