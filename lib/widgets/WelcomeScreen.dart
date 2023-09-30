import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/widgets/homepage.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Align(
              child: Column(
            children: [
              SizedBox(height: 100,),
              Text("Hey  Welcome  to  the  world  of  One  Piece",style: GoogleFonts.orbitron()),
              
              Image.network("https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExY2NmZncxMmVqM3pybW1yazM4d2xjaWZoa3YxMHJiZmR0MzRuZDR6MSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/80W8NsEh9XCj1ZdkQd/giphy.gif"),
              const SizedBox(
                height: 100,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.change_history)),
              Text("CONTINUE",
                  style: GoogleFonts.monomaniacOne(
                      fontSize: 15, letterSpacing: 10)),
            ],
          ))),
    );
  }
}
