import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});
  getUserData()async{
    final dio = Dio();
    Response response = await dio.get("")
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      ))
                ],
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (index, context) {
                  return Container(
                    width: 358.w,
                    height: 60.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F5F5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r)),
                    ),
                    child: const Center(
                      child: Text(
                        'জাতীয়',
                        style: TextStyle(
                          color: Color(0xFF494949),
                          fontSize: 15,
                          fontFamily: 'Hind Siliguri',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (index, context) {
                  return SizedBox(
                    height: 10.h,
                  );
                },
                itemCount: 10),
            ListView.separated(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Center(
                      child: Column(
                        children: [Text("dasdasd"), Text("dasdasggsad")],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: 5)
          ],
        ),
      ),
    );
  }
}
