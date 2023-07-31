import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/controllers/auth_controller.dart';
import 'package:news_app/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:news_app/pages/navigation_page.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
// ...
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AuthController>(
          create: (context) => AuthController()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(390, 890),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: Color(0xFFF1582C),
            textTheme: GoogleFonts.overpassTextTheme(
              Theme.of(context).textTheme,
            ),
            useMaterial3: true,
          ),
          home: Scaffold(
              body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
              if(snapshot.hasData){
                return NavigationPage();
              }
              else{
                return LoginPage();
              }
            },
          )),
        );
      },
    );
  }
}
