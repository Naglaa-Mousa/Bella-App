import 'package:flutter/material.dart';
import '../../../../core/utils/app_images.dart';
class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Image.asset(AppImages.banner,
        width: double.infinity,
        height:size.height*0.22,
        fit: BoxFit.cover,
      ),
    );
  }
}