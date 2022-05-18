import 'package:flutter/material.dart';
import 'package:news_app/core/constants/colors.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({
    Key? key,
    required this.height,
    required this.width,
    this.asset = '',
  }) : super(key: key);

  final double height;
  final double width;
  final String? asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.black.withAlpha(50),
        borderRadius: BorderRadius.circular(20),
        image: asset!.isNotEmpty ? DecorationImage(
            image: NetworkImage(asset!), fit: BoxFit.cover) : null,
      ),
    );
  }
}
