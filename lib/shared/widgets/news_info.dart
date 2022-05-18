import 'package:flutter/material.dart';
import '../../res/styles.dart';
import '../../utils/utils.dart';
import 'news_tag.dart';

class NewsInfo extends StatelessWidget {
  const NewsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const NewsTag(),
        Text(Utils.tab(2) + '•' + Utils.tab(2) + '6 min read' +
            Utils.tab(2) + '•' +
            Utils.tab(2) + '10 mins ago', style: Styles.infoText)
      ],
    );
  }
}
