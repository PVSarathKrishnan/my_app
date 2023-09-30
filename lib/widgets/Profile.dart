import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          backgroundColor: Color(0xFF07090F),
        ),
        body: Center(
          child: Column(children:  [
            SizedBox(height: 10,),
            SizedBox(
              width: 150,
              height: 150,
              child: ClipRRect(
                borderRadius:BorderRadius.circular(100) ,child: const Image(image: AssetImage("assets/images/photo.jpg")),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child:Column(children: [
                Text("Sarath Krishnan P V",style: GoogleFonts.josefinSans(fontSize: 18),),
                SizedBox(height: 2,),
                Text("pvsarathkrishnan@gmail.com",style: GoogleFonts.josefinSans(fontSize: 16),),
              ],) 
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 280,
                height: 300,
                color: const Color.fromARGB(0, 0, 0, 0),
                child:  Text("As a recent B.Tech graduate with proficiency in front-end development (HTML, CSS, JavaScript, Bootstrap) , Flutter App Development and strong organizational, product development, and leadership skills, I'm actively seeking a challenging role in a reputable company .",textAlign:TextAlign.center, style: GoogleFonts.dmMono(fontSize: 16),),
              ),
            ),
           
            SizedBox(
              width: 150,
              height: 30,
              child: ElevatedButton(onPressed: () {
                
              }, child: Text("Edit Profile"),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xFF07090F)
                    )
                    ),
                    ),
                  
                  ),
          
          ]),
        ),
      );
    
  }
}