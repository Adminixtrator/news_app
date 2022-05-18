import 'package:text_to_speech/text_to_speech.dart';

class Accessibility {
  TextToSpeech tts = TextToSpeech();

  startSpeech(String text) {
    tts.setPitch(2.0);
    tts.setVolume(0.8);
    tts.speak(text);
  }

  pauseSpeech() => tts.pause();

  playSpeech() => tts.resume();

  stopSpeech() => tts.stop();

}