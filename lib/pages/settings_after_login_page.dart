import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/controllers/news_controller.dart';

import '../models/news_model.dart';
import '../widgets/custom_submit_buttom.dart';
class SettingsAfterLoginPage extends StatelessWidget {
  const SettingsAfterLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 390.w,
            height: 94.h,
            decoration: const BoxDecoration(color: Color(0xFF494949)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15.h, left: 21.w),
                  child: Image.asset(
                    "assets/images/dhakalive_logo_news_DhakaLive 1.png",
                    height: 20.h,
                    width: 156.68.w,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 13.h, right: 13.w),
                    child: Image.asset(
                      "assets/images/notifications_active.png",
                      height: 24.h,
                      width: 24.h,
                    )),


              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: EdgeInsets.only(left: 22.0.w,right: 21.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(backgroundColor: Colors.grey,radius: 30.r,),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(100.r),),
                              ),
                              child: Center(child: Icon(Icons.camera_alt),),
                            )

                          ],
                        ),


                          ],),
                    SizedBox(width: 5.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'কৌশিক আহমেদ',
                          style: TextStyle(
                            color: Color(0xFF0F0E0E),
                            fontSize: 15.sp,
                            fontFamily: 'Hind Siliguri',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '০১৫ ০০০ ০০০ ০০০',
                          style: TextStyle(
                            color: Color(0xFF494949),
                            fontSize: 11.sp,
                            fontFamily: 'Hind Siliguri',
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                  ],
                ),

                Container(
                  width: 77.w,
                  height: 34.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.w
                      , vertical: 5.h),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.25.w, color: Color(0xFF494949)),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.edit),
                      SizedBox(width: 8.w),
                      Text(
                        'এডিট',
                        style: TextStyle(
                          color: Color(0xFF0F0E0E),
                          fontSize: 14.sp,
                          fontFamily: 'Hind Siliguri',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],),
          ),
          SizedBox(height: 20.h,),

          Padding(
            padding: EdgeInsets.only(left: 22.0.w,right: 21.w),
            child: SizedBox(
              height: 500.h,
              child: ListView.separated(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (index,context){
                    return Container(
                      padding: EdgeInsets.only(left: 10.w,right: 10.w),
                      width: 358.w,
                      height: 60.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F5F5),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'জাতীয়',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontSize: 15.sp,
                              fontFamily: 'Hind Siliguri',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                    );
                  }, separatorBuilder: (index,context){
                return SizedBox(height: 5.h,);
              }, itemCount: 7),
            ),
          ),
          Center(child: CustomSubmitButton(buttonText: "Logout",onTap: ()async{
            NewsModel data = await NewsController().fetchAllNews();
            print(data.articles);
          },),),
          SizedBox(height: 32.h,),
          Padding(
            padding: EdgeInsets.only(left: 22.w),
            child: Row(children: [
              Image.asset("assets/images/facebook.png",height: 24.h,width: 24.h,),
              SizedBox(width: 10.w,),
              Image.asset("assets/images/telegram.png",height: 24.h,width: 24.h,),
              SizedBox(width: 10.w,),
              Image.asset("assets/images/twitter.png",height: 24.h,width: 24.h,),
              SizedBox(width: 10.w,),
              Image.asset("assets/images/linkedin.png",height: 24.h,width: 24.h,),
              SizedBox(width: 10.w,),
              Image.asset("assets/images/instagram.png",height: 24.h,width: 24.h,),
            ],),
          ),
        ],
      ),
    );
  }
}
