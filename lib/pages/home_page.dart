import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/widgets/category_chip.dart';
import 'package:news_app/widgets/cover_news_card.dart';

import '../widgets/normal_news_card.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CoverNewsCard(isRounded:false,categoryList: [const CategoryChip(backgroundColor: Color(0x19F1582C),centerText: "Breaking News",textColor: Color(0xFFF1582C),),
              SizedBox(width: 2.w,),
              const CategoryChip(backgroundColor: Color(0x19494949),centerText: "National",textColor: Color(0xFF494949),),], imagePath: 'assets/images/2ff8debe6b82ad6b44d242e83f8dac8d.jpg',
              titleText: "Inauguration of the dream Padma Bridge on June 25",
              mainText: "The dream Padma Bridge will be inaugurated on June 25. Prime Minister Sheikh Hasina will inaugurate the bridge at 10 am today. The dream Padma Bridge will be inaugurated on June 25. Prime Minister Sheikh Hasina will inaugurate the bridge at 10 am today.",
              timeText: "10 minutes ago",
            ),
            SizedBox(height: 25.h,),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (index,context){return  NormalNewsCard(categoryList: [const CategoryChip(backgroundColor: Color(0x19F1582C),centerText: "Breaking News",textColor: Color(0xFFF1582C),),
              SizedBox(width: 2.w,),
              const CategoryChip(backgroundColor: Color(0x19494949),centerText: "National",textColor: Color(0xFF494949),),], imagePath: 'assets/images/2ff8debe6b82ad6b44d242e83f8dac8d.jpg',
              titleText: "Inauguration of the dream \nPadma Bridge on June 25",
              timeText: "10 minutes ago",
            );}, separatorBuilder: (index,context){
              return SizedBox(height: 10.h,);
            }, itemCount: 3),
            SizedBox(height: 30.h,),
            ListView.separated(
              padding: EdgeInsets.only(left: 16.w,right: 13.w),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (index,context){return  CoverNewsCard(isRounded:true,mainText:"The dream Padma Bridge will be inaugurated on June 25. Prime Minister Sheikh Hasina will inaugurate the bridge at 10 am today. The dream Padma Bridge will be inaugurated on June 25. Prime Minister Sheikh Hasina will inaugurate the bridge at 10 am today.",categoryList: [const CategoryChip(backgroundColor: Color(0x19F1582C),centerText: "Breaking News",textColor: Color(0xFFF1582C),),
                  SizedBox(width: 2.w,),
                  const CategoryChip(backgroundColor: Color(0x19494949),centerText: "National",textColor: Color(0xFF494949),),], imagePath: 'assets/images/2ff8debe6b82ad6b44d242e83f8dac8d.jpg',
                  titleText: "Inauguration of the dream \nPadma Bridge on June 25",
                  timeText: "10 minutes ago",
                );}, separatorBuilder: (index,context){
              return SizedBox(height: 10.h,);
            }, itemCount: 10),
            SizedBox(height: 15.h,),
            Padding(
              padding:EdgeInsets.only(left: 16.w,right: 13.w),
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
                  SizedBox(height: 10.h,),
                  SizedBox(
                    height: 219.h,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (index,context){
                          return Container(
                            width: 154,
                            height: 219,
                            decoration: ShapeDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/images/2ff8debe6b82ad6b44d242e83f8dac8d.jpg"),
                                fit: BoxFit.fill,
                              ),

                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.00, -1.00),
                                  end: Alignment(0, 1),
                                  colors: [Color(0x00D9D9D9), Colors.black],
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                CategoryChip(backgroundColor: Colors.white.withOpacity(0.10000000149011612), centerText: "National", textColor: Colors.white),
                                const Text(
                                  'ফেরি চলাচলের নতুন নিয়ম\n শিমুলিয়া-বাংলাবাজার রুটে',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'Hind Siliguri',
                                    fontWeight: FontWeight.w400,
                                    height: 15,
                                  ),
                                )
                              ],),
                            ),
                          );
                        }, separatorBuilder: (index,context){
                      return SizedBox(width: 10.w,);
                    }, itemCount: 5),
                  )

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
