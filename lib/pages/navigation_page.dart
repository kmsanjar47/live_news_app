import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/pages/categories_page.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:news_app/pages/login_page.dart';
import 'package:news_app/pages/search_page.dart';
import 'package:news_app/pages/setting_before_login_page.dart';
import 'package:news_app/pages/signup_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();

}

class _NavigationPageState extends State<NavigationPage> {
  int currentNavbarIdx = 2;
  List pages = [const HomePage(),
    const SignUpPage(),const SearchPage(),const SettingBeforeLoginPage()];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:  const Color(0xFFF1582C),
        unselectedItemColor: const Color(0xFF494949),
        type: BottomNavigationBarType.fixed,

        currentIndex: currentNavbarIdx,

        onTap: (value){
          setState(() {
            currentNavbarIdx = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Image.asset("assets/images/android_google_home.png",color: currentNavbarIdx==0?const Color(0xFFF1582C):const Color(0xFF494949),),label: "Home"),
          BottomNavigationBarItem(icon: Image.asset("assets/images/category.png",color: currentNavbarIdx==1?const Color(0xFFF1582C):const Color(0xFF494949)),label: "Categories"),
          BottomNavigationBarItem(icon: Image.asset("assets/images/search.png",color: currentNavbarIdx==2?const Color(0xFFF1582C):const Color(0xFF494949)),label: "Search"),
          BottomNavigationBarItem(icon: Image.asset("assets/images/settings.png",color: currentNavbarIdx==3?const Color(0xFFF1582C):const Color(0xFF494949)),label: "Settings"),
        ],
      ),
      body: pages[currentNavbarIdx],
    );
  }
}
