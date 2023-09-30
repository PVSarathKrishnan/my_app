import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/widgets/LoginScreen.dart';

const SAVE_KEY_NAME = "UserLoggedIn";
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "One Piece",
      home: AnimatedSplashScreen(
        splash: Text(
          "Your Adventure Awaits",
          style: GoogleFonts.sacramento(letterSpacing: 2, fontSize: 32),
        ),
        nextScreen: LoginScreen(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 1000,
      ),
    );
  }
}
