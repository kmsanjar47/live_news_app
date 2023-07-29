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
            CoverNewsCard(categoryList: [CategoryChip(backgroundColor: Color(0x19F1582C),centerText: "Breaking News",textColor: Color(0xFFF1582C),),
              SizedBox(width: 2.w,),
              CategoryChip(backgroundColor: Color(0x19494949),centerText: "National",textColor: Color(0xFF494949),),], imagePath: 'assets/images/2ff8debe6b82ad6b44d242e83f8dac8d.jpg',
              titleText: "Inauguration of the dream Padma Bridge on June 25",
              mainText: "The dream Padma Bridge will be inaugurated on June 25. Prime Minister Sheikh Hasina will inaugurate the bridge at 10 am today. The dream Padma Bridge will be inaugurated on June 25. Prime Minister Sheikh Hasina will inaugurate the bridge at 10 am today.",
              timeText: "10 minutes ago",
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (index,context){return  NormalNewsCard(categoryList: [CategoryChip(backgroundColor: Color(0x19F1582C),centerText: "Breaking News",textColor: Color(0xFFF1582C),),
              SizedBox(width: 2.w,),
              CategoryChip(backgroundColor: Color(0x19494949),centerText: "National",textColor: Color(0xFF494949),),], imagePath: 'assets/images/2ff8debe6b82ad6b44d242e83f8dac8d.jpg',
              titleText: "Inauguration of the dream \nPadma Bridge on June 25",
              timeText: "10 minutes ago",
            );}, separatorBuilder: (index,context){
              return SizedBox(height: 10.h,);
            }, itemCount: 3),
            SizedBox(height: 30.h,),
            ListView.separated(
              padding: EdgeInsets.only(left: 16.w,right: 13.w),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (index,context){return  CoverNewsCard(mainText:"The dream Padma Bridge will be inaugurated on June 25. Prime Minister Sheikh Hasina will inaugurate the bridge at 10 am today. The dream Padma Bridge will be inaugurated on June 25. Prime Minister Sheikh Hasina will inaugurate the bridge at 10 am today.",categoryList: [CategoryChip(backgroundColor: Color(0x19F1582C),centerText: "Breaking News",textColor: Color(0xFFF1582C),),
                  SizedBox(width: 2.w,),
                  CategoryChip(backgroundColor: Color(0x19494949),centerText: "National",textColor: Color(0xFF494949),),], imagePath: 'assets/images/2ff8debe6b82ad6b44d242e83f8dac8d.jpg',
                  titleText: "Inauguration of the dream \nPadma Bridge on June 25",
                  timeText: "10 minutes ago",
                );}, separatorBuilder: (index,context){
              return SizedBox(height: 10.h,);
            }, itemCount: 3),


          ],
        ),
      ),

    );
  }
}
