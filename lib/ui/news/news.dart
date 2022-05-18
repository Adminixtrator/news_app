import 'package:flutter/material.dart';
import 'package:news_app/core/models/news_model.dart';
import 'package:news_app/res/sizes.dart';
import 'package:news_app/res/styles.dart';
import 'package:news_app/shared/widgets/button_back.dart';
import 'package:news_app/shared/widgets/image_box.dart';
import 'package:news_app/shared/widgets/news_info.dart';
import 'package:news_app/shared/widgets/profile_info_row.dart';
import 'package:news_app/shared/widgets/share_button.dart';
import 'package:news_app/shared/widgets/text_to_speech_button.dart';
import 'package:news_app/utils/utils.dart';

class News extends StatefulWidget {
  const News({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsModel news;

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.position.pixels <= 56) {
        setState(() => _physics = const ClampingScrollPhysics());
      } else {
        setState(() => _physics = const BouncingScrollPhysics());
      }
    });
  }

  final _controller = ScrollController();
  ScrollPhysics _physics = const ClampingScrollPhysics();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          leading: const ButtonBack(),
          leadingWidth: 70,
          actions: [
            ShareButton(news: widget.news),
            NSize.hW(20),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          physics: _physics,
          controller: _controller,
          child: Column(
            children: [
              NewsInfo(news: widget.news),
              NSize.vH(25),
              Text(widget.news.title!,
                  style: Styles.header),
              NSize.vH(25),
              ProfileInfoRow(news: widget.news),
              NSize.vH(30),
              ImageBox(height: MSize.take(220),
                  width: double.infinity,
                  asset: widget.news.urlToImage),
              NSize.vH(20),
              Text(widget.news.content!,
                  style: Styles.bodyText)
            ],
          ),
        ),
        floatingActionButton: TextToSpeechButton(
            corpus: widget.news.title! + Utils.tab(1) + widget.news.content!)
    );
  }
}
