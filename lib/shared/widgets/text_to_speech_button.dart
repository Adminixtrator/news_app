import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class TextToSpeechButton extends StatefulWidget {
  const TextToSpeechButton({Key? key}) : super(key: key);

  @override
  State<TextToSpeechButton> createState() => _TextToSpeechButtonState();
}

class _TextToSpeechButtonState extends State<TextToSpeechButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
            onPressed: () {},
            splashColor: AppColors.transparent,
            foregroundColor: AppColors.transparent,
            backgroundColor: AppColors.black,
            child: const Padding(padding: EdgeInsets.all(10),
              child: Icon(
                  Icons.play_arrow, color: AppColors.white,
                  size: 30),
            )));
  }
}
