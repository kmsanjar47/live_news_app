import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
