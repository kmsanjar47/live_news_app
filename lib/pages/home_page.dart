import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:news_app/controllers/news_controller.dart';
import 'package:news_app/widgets/category_chip.dart';
import 'package:news_app/widgets/cover_news_card.dart';
import 'package:provider/provider.dart';

import '../models/news_model.dart';
import '../widgets/normal_news_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    NewsController newsController = Provider.of(context, listen: false);
    newsController.updateArticlesfromDB();
    newsController.addArticlesToDB();
  }
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsController>(builder: (_, snapshot, ___) {
      return Scaffold(
          body: snapshot.articleList != null
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: ()async{

                        },
                        child: CoverNewsCard(
                          isRounded: false,
                          categoryList: [
                            const CategoryChip(
                              backgroundColor: Color(0x19F1582C),
                              centerText: "Breaking News",
                              textColor: Color(0xFFF1582C),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            const CategoryChip(
                              backgroundColor: Color(0x19494949),
                              centerText: "National",
                              textColor: Color(0xFF494949),
                            ),
                          ],
                          imagePath: snapshot.articleList![0].urlToImage != null
                              ? NetworkImage(
                                  snapshot.articleList![0].urlToImage.toString())
                              : null,
                          titleText: snapshot.articleList![0].title!,
                          mainText: snapshot.articleList![0].content!,
                          timeText: snapshot.articleList![0].publishedAt!,
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      // ListView.separated(
                      //     physics: const NeverScrollableScrollPhysics(),
                      //     shrinkWrap: true,
                      //     itemBuilder: (BuildContext context, index) {
                      //       return NormalNewsCard(
                      //         categoryList: [
                      //           const CategoryChip(
                      //             backgroundColor: Color(0x19F1582C),
                      //             centerText: "Breaking News",
                      //             textColor: Color(0xFFF1582C),
                      //           ),
                      //           SizedBox(
                      //             width: 2.w,
                      //           ),
                      //           CategoryChip(
                      //             backgroundColor: Color(0x19494949),
                      //             centerText: snapshot
                      //                 .articleList![index].source!.name!,
                      //             textColor: Color(0xFF494949),
                      //           ),
                      //         ],
                      //         imagePath:
                      //             snapshot.articleList![index].urlToImage !=
                      //                     null
                      //                 ? NetworkImage(snapshot
                      //                     .articleList![index].urlToImage
                      //                     .toString())
                      //                 : NetworkImage(
                      //                     "https://placehold.co/600x400"),
                      //         titleText: snapshot.articleList![index].title!,
                      //         timeText:
                      //             snapshot.articleList![index].publishedAt!,
                      //       );
                      //     },
                      //     separatorBuilder: (BuildContext context, index) {
                      //       return SizedBox(
                      //         height: 15.h,
                      //       );
                      //     },
                      //     itemCount: 20),
                      SizedBox(
                        height: 30.h,
                      ),
                      ListView.separated(
                          padding: EdgeInsets.only(left: 16.w, right: 13.w),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, index) {
                            return CoverNewsCard(
                              isRounded: true,
                              mainText:
                                 snapshot.articleList![index].content!,
                              categoryList: [
                                const CategoryChip(
                                  backgroundColor: Color(0x19F1582C),
                                  centerText: "Breaking News",
                                  textColor: Color(0xFFF1582C),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                const CategoryChip(
                                  backgroundColor: Color(0x19494949),
                                  centerText: "National",
                                  textColor: Color(0xFF494949),
                                ),
                              ],
                              imagePath:
                                  snapshot.articleList![index].urlToImage !=
                                          null
                                      ? NetworkImage(snapshot
                                          .articleList![index].urlToImage
                                          .toString())
                                      : null,
                              titleText: snapshot.articleList![index].title!,
                              timeText:
                                  snapshot.articleList![index].publishedAt!,
                            );
                          },
                          separatorBuilder: (BuildContext context, index) {
                            return SizedBox(
                              height: 10.h,
                            );
                          },
                          itemCount: 10),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.w, right: 13.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Spotlight',
                              style: TextStyle(
                                color: const Color(0xFF0F0E0E),
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              height: 221.h,
                              child: ListView.separated(
                                  padding: EdgeInsets.only(bottom: 2.h),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext context, index) {
                                    return Container(
                                      width: 154.w,
                                      decoration: ShapeDecoration(
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "assets/images/2ff8debe6b82ad6b44d242e83f8dac8d.jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.r)),
                                      ),
                                      child: Container(
                                        width: 154.w,
                                        padding: EdgeInsets.only(
                                            left: 8.w, right: 8.w),
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.r)),
                                          gradient: LinearGradient(
                                            begin: Alignment(0.00, -1.00),
                                            end: Alignment(0, 1),
                                            colors: [
                                              Color(0x00D9D9D9),
                                              Colors.black
                                            ],
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CategoryChip(
                                                backgroundColor: Colors.white
                                                    .withOpacity(
                                                        0.10000000149011612),
                                                centerText: "National",
                                                textColor: Colors.white),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              snapshot.articleList![index].title!,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.sp,
                                                fontFamily: 'Hind Siliguri',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder:
                                      (BuildContext context, index) {
                                    return SizedBox(
                                      width: 10.w,
                                    );
                                  },
                                  itemCount: 5),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, index) {
                                  return NormalNewsCard(
                                    categoryList: [
                                      const CategoryChip(
                                        backgroundColor: Color(0x19F1582C),
                                        centerText: "Breaking News",
                                        textColor: Color(0xFFF1582C),
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      const CategoryChip(
                                        backgroundColor: Color(0x19494949),
                                        centerText: "National",
                                        textColor: Color(0xFF494949),
                                      ),
                                    ],
                                    imagePath: snapshot.articleList![index]
                                                .urlToImage !=
                                            null
                                        ? NetworkImage(snapshot
                                            .articleList![index].urlToImage
                                            .toString())
                                        : NetworkImage(
                                            "https://placehold.co/600x400"),
                                    titleText:
                                        snapshot.articleList![index].title!,
                                    timeText: snapshot
                                        .articleList![index].publishedAt!,
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, index) {
                                  return SizedBox(
                                    height: 10.h,
                                  );
                                },
                                itemCount: 3),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(),
                ));
    });
  }
}
