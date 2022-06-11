import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news_app/core/constants/colors.dart';
import 'package:news_app/core/models/news_model.dart';
import 'package:news_app/core/services/news/news_service.dart';
import 'package:news_app/res/dummy.dart';
import 'package:news_app/res/styles.dart';
import 'package:news_app/shared/widgets/featured_news.dart';
import 'package:news_app/shared/widgets/featured_news_loading.dart';
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
    fetchNews(Dummy.newsCategory[0]);
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
  List<NewsModel> news = [];

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
                          active: category == Dummy.newsCategory[index],
                          onPressed: () {
                            setState(() =>
                            category = Dummy.newsCategory[index]);
                            fetchNews(Dummy.newsCategory[index]);
                          }))),
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
                            itemCount: news.isEmpty ? 1 : 5,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            itemBuilder: (BuildContext context, int index) {
                              return index == 0
                                  ? news.isEmpty ? const FeaturedNewsLoading() : FeaturedNews(featured: news[index])
                                  : NewsWidget(news: news[index]);
                            }
                        ),
                      ]))),
        ],
      ),
    );
  }

  void fetchNews(String query) async {
    NewsService.query = query;
    setState(() => news = []);
    await NewsService.fetchNews().then((response) {
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body)['articles'];
        json.forEach((e) => news.add(NewsModel.fromJson(e)));
        setState(() {});
      }
    });
  }
}
