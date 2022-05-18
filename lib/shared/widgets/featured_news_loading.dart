import 'package:flutter/material.dart';
import 'package:news_app/core/constants/colors.dart';
import 'package:news_app/res/sizes.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class FeaturedNewsLoading extends StatefulWidget {
  const FeaturedNewsLoading({Key? key}) : super(key: key);

  @override
  State<FeaturedNewsLoading> createState() => _FeaturedNewsLoadingState();
}

class _FeaturedNewsLoadingState extends State<FeaturedNewsLoading> {
  @override
  Widget build(BuildContext context) {
    return SkeletonLoader(
        direction: SkeletonDirection.ltr,
        highlightColor: AppColors.black,
        items: 1,
        builder: Container(
          height: MSize.take(300),
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Container(
                height: MSize.take(170),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.black.withAlpha(50),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    )
                ),
                alignment: Alignment.topRight,
              ),
              Container(
                height: MSize.take(128),
                width: double.infinity,
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment
                        .stretch,
                    children: [
                      Container(
                        height: MSize.take(20),
                        decoration: BoxDecoration(
                          color: AppColors.black
                              .withAlpha(50),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: MSize.take(300),
                      ),
                      NSize.vH(10),
                      Container(
                        height: MSize.take(20),
                        decoration: BoxDecoration(
                          color: AppColors.black
                              .withAlpha(50),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: MSize.take(300),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween,
                        children: [
                          Row(children: [
                            Container(
                                  height: MSize.take(40),
                                  width: MSize.take(40),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.black
                                          .withAlpha(50)
                                  ),
                                ),
                            NSize.hW(15),
                            NSize.hAw(50, 200),
                          ]),
                        ],
                      )
                    ]),
              ),
            ],
          ),
        ));
  }
}
