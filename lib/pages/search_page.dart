import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/widgets/category_chip.dart';
import 'package:news_app/widgets/normal_news_card.dart';
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Column(
        children: [
          Container(
            width: 390.w,
            height: 94.h,
            decoration: const BoxDecoration(color: Color(0xFF494949)),
            child: Padding(
              padding: EdgeInsets.only(top: 51.h,bottom: 5.h,left: 16.w,right: 16.w),
              child: Container(
                width: 358,
                height: 38,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
                child: Center(
                  child: TextField(

                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: "Search....",
                      border: InputBorder.none,
                    ),),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h,),

          Expanded(
            child: ListView.separated(
              itemBuilder: (context,index){
              return NormalNewsCard(categoryList: [const CategoryChip(backgroundColor: Color(0x19F1582C),centerText: "Breaking News",textColor: Color(0xFFF1582C),),
                SizedBox(width: 2.w,),
                const CategoryChip(backgroundColor: Color(0x19494949),centerText: "National",textColor: Color(0xFF494949),),], imagePath: null,
                titleText: "Inauguration of the dream \nPadma Bridge on June 25",
                timeText: "10 minutes ago",
              );}

        , separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 25.h,); },itemCount: 5,),
          )],
      ),
    );
  }
}
