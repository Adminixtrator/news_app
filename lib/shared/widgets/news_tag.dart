import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../res/styles.dart';

class NewsTag extends StatelessWidget {
  const NewsTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.faintGrey,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Text("Food", style: Styles.inactiveTabText),
    );
  }
}
