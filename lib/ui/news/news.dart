import 'package:flutter/material.dart';
import 'package:news_app/res/sizes.dart';
import 'package:news_app/res/styles.dart';
import 'package:news_app/shared/widgets/button_back.dart';
import 'package:news_app/shared/widgets/image_box.dart';
import 'package:news_app/shared/widgets/news_info.dart';
import 'package:news_app/shared/widgets/news_tag.dart';
import 'package:news_app/shared/widgets/profile_info_row.dart';
import 'package:news_app/shared/widgets/share_button.dart';
import 'package:news_app/utils/utils.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

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
          const ShareButton(),
          NSize.hW(20),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        physics: _physics,
        controller: _controller,
        child: Column(
          children: [
            const NewsInfo(),
            NSize.vH(25),
            Text("Here's What You Need To Know About Dumplings",
                style: Styles.header),
            NSize.vH(25),
            const ProfileInfoRow(),
            NSize.vH(30),
            ImageBox(height: MSize.take(220), width: double.infinity),
            NSize.vH(20),
            Text(
                "SamMobile has affiliate and sponsored partnerships. If you buy something through one of these links, we may earn a commission.Electric cars are believed to be the future of mobility.\n\nSamMobile has affiliate and sponsored partnerships. If you buy something through one of these links, we may earn a commission.Electric cars are believed to be the future of mobility.",
                style: Styles.bodyText)
          ],
        ),
      ),
    );
  }
}
