import 'package:flutter/material.dart';
import 'package:news_app/core/constants/colors.dart';
import 'package:news_app/res/dummy.dart';
import 'package:news_app/res/styles.dart';
import 'package:news_app/shared/widgets/featured_news.dart';
import 'package:news_app/shared/widgets/news_category.dart';

import '../../res/sizes.dart';
import '../../shared/widgets/news_widget.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
  String category = Dummy.newsCategory[0];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("News", style: Styles.appbarHeader),
                IconButton(onPressed: () {},
                  icon: const Icon(
                      Icons.notifications_active, color: AppColors.black,
                      size: 25),)
              ],
            ),
          ),
          NSize.vH(20),
          SizedBox(
              width: double.infinity,
              height: MSize.take(50),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 6,
                  padding: const EdgeInsets.only(left: 20),
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) =>
                      NewsCategory(
                        title: Dummy.newsCategory[index],
                        active: Dummy.newsCategory[index] == category,
                        onPressed: () =>
                            setState(() =>
                            category = Dummy.newsCategory[index]),))),
          NSize.vH(20),
          Expanded(
              child: SingleChildScrollView(
                  controller: _controller,
                  physics: _physics,
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text("Featured", style: Styles.headline)),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: 4,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            itemBuilder: (BuildContext context, int index) {
                              return index == 0
                                  ? const FeaturedNews()
                                  : const NewsWidget();
                            }
                        ),
                      ]))),
        ],
      ),
    );
  }
}
