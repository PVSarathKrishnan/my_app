import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/widgets/LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_app/widgets/WelcomeScreen.dart';

const SAVE_KEY_NAME = "UserLoggedIn";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isLoggedIn = prefs.getBool(SAVE_KEY_NAME) ?? false;

  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({Key? key, required this.isLoggedIn}) : super(key: key);

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
        nextScreen: isLoggedIn ? welcomeScreen() : LoginScreen(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 1000,
      ),
    );
  }
}
