import 'package:flutter/material.dart';

class PhotoPreview extends StatelessWidget {
  const PhotoPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage("assets/image/fruit.png"));
  }
}
