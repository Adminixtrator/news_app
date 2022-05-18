import 'package:flutter/material.dart';
import 'package:news_app/core/services/accessibility.dart';

import '../../core/constants/colors.dart';

class TextToSpeechButton extends StatefulWidget {
  const TextToSpeechButton({
    Key? key,
    required this.corpus,
  }) : super(key: key);

  final String corpus;

  @override
  State<TextToSpeechButton> createState() => _TextToSpeechButtonState();
}

class _TextToSpeechButtonState extends State<TextToSpeechButton> {
  @override
  void initState() {
    super.initState();
  }

  bool playing = false;
  bool newlyStarted = true;

  @override
  void dispose() {
    super.dispose();
    Accessibility().stopSpeech();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
            onPressed: _toggleAudioPlay,
            splashColor: AppColors.transparent,
            foregroundColor: AppColors.transparent,
            backgroundColor: AppColors.black,
            child: const Padding(padding: EdgeInsets.all(10),
              child: Icon(
                  Icons.play_arrow, color: AppColors.white,
                  size: 30),
            )));
  }

  void _toggleAudioPlay() {
    // if (playing && !newlyStarted) {
    //   Accessibility().pauseSpeech();
    // } else if (!playing && newlyStarted) {
      Accessibility().startSpeech(widget.corpus);
    //   setState(() {
    //     playing = true;
    //     newlyStarted = false;
    //   });
    // } else {
    //   Accessibility().playSpeech();
    // }
  }
}
