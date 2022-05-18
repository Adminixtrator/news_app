import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';
import '../../res/sizes.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {},
        splashColor: AppColors.transparent,
        highlightColor: AppColors.transparent,
        icon: Icon(
            Icons.share, size: MSize.take(27), color: AppColors.black));
  }
}
