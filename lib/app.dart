// import 'package:firebase_core/firebase_core.dart';
import 'package:app_land/feature/auth/repos/auth.dart';
import 'package:app_land/mytheme.dart';
import 'package:app_land/services/app_constants.dart';
import 'package:app_land/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatefulWidget {
  static late Function() restartApp;
  static late AppEnvironment appEnvironment;

  // static Future<void> initialize() async {
  //   await getIt.reset();
  //   configureDependencies(getIt);
  //   await getIt.allReady(timeout: Duration(seconds: 5));
  // }

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Key _key = UniqueKey();

  @override
  void initState() {
    super.initState();
    App.restartApp = restartAppFunc;
  }

  void restartAppFunc() async {
    setState(() => _key = UniqueKey());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find Seat',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: MyTheme.splash,
          floatingLabelStyle: GoogleFonts.sono(
            textStyle: const TextStyle(
              color: MyTheme.splash,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline1: GoogleFonts.dancingScript(
            textStyle: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.7),
              wordSpacing: 0,
            ),
          ),
          headline2: GoogleFonts.sono(
            textStyle: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ),
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => SplashScreen(),
        // '/login': (context) => const LoginScreen(),
        // '/signup': (context) => const SignUpScreen(),
        // '/profile': (context) => const ProfileScreen(),
        // '/extract_arguments': (context) => const ExtractArgumentsScreen(),
      },
    );
  }
}
