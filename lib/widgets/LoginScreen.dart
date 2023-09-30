import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/widgets/WelcomeScreen.dart';
import 'package:my_app/main.dart';
import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final String predefinedName = "";
  final String predefinedPassword = "";

  String errorMessage = '';

  Future<void> _login() async {
    final enteredName = nameController.text;
    final enteredPassword = passwordController.text;

    if (enteredName == predefinedName &&
        enteredPassword == predefinedPassword) {

          final _sharedPrefs= await SharedPreferences.getInstance();
          await _sharedPrefs.setBool(SAVE_KEY_NAME,true);
      // Successful login, you can navigate to another screen or perform actions here.
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const welcomeScreen(),
        ),
      );
      // For now, let's clear the form and the error message.
      nameController.clear();
      passwordController.clear();
      setState(() {
        errorMessage = '';
      });
    } else {
      // Incorrect credentials, show an error message.
      setState(() {
        errorMessage = 'Incorrect email or password';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                Image.network("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/0de018f1-69bf-4810-9a76-17fd8fd3c272/ded3zbj-a5a41f9b-7a80-4f1b-9d1a-b115fed22a86.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzBkZTAxOGYxLTY5YmYtNDgxMC05YTc2LTE3ZmQ4ZmQzYzI3MlwvZGVkM3piai1hNWE0MWY5Yi03YTgwLTRmMWItOWQxYS1iMTE1ZmVkMjJhODYuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.BhNypCU9PwhHKNXxxNrPNJRkv00qzlsv_JouFjFKleA",
                height: 200,
                width: 300,),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        decoration:  InputDecoration(
                          labelText: "Username",labelStyle: GoogleFonts.orbitron(),
                          hintText: "Enter  username",hintStyle: GoogleFonts.comicNeue(),
                          prefixIcon: Icon(Icons.person_4_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                        obscureText: true, // Hide the password
                        decoration:  InputDecoration(
                          labelText: "Password",labelStyle: GoogleFonts.orbitron(),
                          hintText: "Enter your Password",hintStyle: GoogleFonts.comicNeue(),
                          prefixIcon: Icon(Icons.lock_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                        ),
                      ),
                      SizedBox(height: 22),
                      SizedBox(
                        width: 120,
                        height: 30,
                        child: ElevatedButton(
                          
                          onPressed: _login,
                          
                          child:  Text("L o g i n",style: GoogleFonts.orbitron(fontWeight: FontWeight.bold),),
                          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF07090F,)),shape:MaterialStatePropertyAll<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
                        ),
                      ),
                      if (errorMessage.isNotEmpty)
                        Text(
                          errorMessage,
                          style:
                              TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
