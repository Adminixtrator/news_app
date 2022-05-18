import 'package:flutter/material.dart';
import 'package:news_app/shared/widgets/news_widget.dart';
import '../../core/constants/colors.dart';
import '../../res/sizes.dart';
import '../../res/styles.dart';
import '../../shared/widgets/button_back.dart';
import '../../shared/widgets/profile_info_row_large.dart';

class WriterProfile extends StatefulWidget {
  const WriterProfile({Key? key}) : super(key: key);

  @override
  State<WriterProfile> createState() => _WriterProfileState();
}

class _WriterProfileState extends State<WriterProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ButtonBack(),
        leadingWidth: 70,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ProfileInfoRowLarge(),
          NSize.vH(10),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  "A writer living in NYC. Writing about Blockchain, Crypto and De-Fi",
                  style: Styles.bodyText)),
          NSize.vH(30),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            color: AppColors.lineGrey,
            height: 1,
          ),
          NSize.vH(20),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Posts", style: Styles.headline)),
          Expanded(child: ListView.builder(
              itemCount: 5,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (BuildContext context, int index) {
                return const NewsWidget();
              }))
        ],
      ),
    );
  }
}
