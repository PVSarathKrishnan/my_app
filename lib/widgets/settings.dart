import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
     return  Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
          backgroundColor: Color(0xFF07090F),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: const [
              Row(
                children: [
                  Icon(
                    Icons.abc,
                    color: Color(0xFF07090F),
                  ),
                  SizedBox(width: 20),
                  Text("Language",style: TextStyle(fontSize: 20),)
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
               SizedBox(height: 5,),
              Row(
                children: [
                  Icon(
                    Icons.volume_up_rounded,
                    color: Color(0xFF07090F),
                  ),
                  SizedBox(width: 20),
                  Text("Sound",style: TextStyle(fontSize: 20),)
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Icon(
                    Icons.display_settings,
                    color: Color(0xFF07090F),
                  ),
                  SizedBox(width: 20),
                  Text("Display",style: TextStyle(fontSize: 20),)
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
               SizedBox(height: 5,),
              Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Color(0xFF07090F),
                  ),
                  SizedBox(width: 20),
                  Text("Nottification",style: TextStyle(fontSize: 20),)
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              SizedBox(height: 5,),Row(
                children: [
                  Icon(
                    Icons.security,
                    color: Color(0xFF07090F),
                  ),
                  SizedBox(width: 20),
                  Text("security",style: TextStyle(fontSize: 20),)
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
               SizedBox(height: 5,),
              Row(
                children: [
                  Icon(
                    Icons.photo_album_sharp,
                    color: Color(0xFF07090F),
                  ),
                  SizedBox(width: 20),
                  Text("Media Quality",style: TextStyle(fontSize: 20),)
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Icon(
                    Icons.change_history_outlined,
                    color: Color(0xFF07090F),
                  ),
                  SizedBox(width: 20),
                  Text("About",style: TextStyle(fontSize: 20),)
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
               SizedBox(height: 5,),
              Row(
                children: [
                  Icon(
                    Icons.support_agent,
                    color: Color(0xFF07090F),
                  ),
                  SizedBox(width: 20),
                  Text("Support",style: TextStyle(fontSize: 20),)
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              SizedBox(height: 5,),
            ],
          ),
        ),
      );
    
  }
}