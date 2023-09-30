import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/widgets/Profile.dart';
import 'package:my_app/widgets/Settings.dart';
import 'package:my_app/widgets/LoginScreen.dart';
import 'package:my_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isLiked1 = false;
bool isLiked2 = false;
bool isLiked3 = false;
bool isLiked4 = false;
bool isLiked5 = false;
bool isLiked6 = false;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Color(0xFF07090F),
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color.fromARGB(255, 245, 245, 245)),
                accountName: Text(
                  "Sarath Krishnan P V",
                  style: TextStyle(color: Color(0xFF07090F)),
                ),
                accountEmail: Text(
                  "pvsarathkrishnan@gmail.com",
                  style: TextStyle(color: Color(0xFF07090F)),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/photo.jpg"),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                iconColor: Colors.white,
                title: const Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settings()));
                },
                iconColor: Colors.white,
                title: const Text(
                  "Settings",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(Icons.logout_outlined),
                onTap: () {
                  logOutBox(context);
                },
                iconColor: Colors.white,
                title: const Text("Logout",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: const Color(0xFF07090F),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child:
                  // card 1
                  Card(
                elevation: 50,
                color: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Red Hair Shanks",
                        style:
                            GoogleFonts.comfortaa(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "18 minutes ago",
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cdn.fandomwire.com/wp-content/uploads/2023/08/01153755/Shanks.webp"),
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      title: Text(
                        "return this hat to me ,luffy",
                        style: GoogleFonts.comfortaa(),
                      ),
                    ),
                    Image.asset("assets/images/two.jpg"),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isLiked1 = !isLiked1;
                            });
                          },
                          icon: Icon(Icons.thumb_up),
                          color: isLiked1 ? const Color.fromARGB(255, 255, 17, 0) : Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // card 2
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Card(
                elevation: 50,
                color: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Roronoa Zoro",
                        style:
                            GoogleFonts.comfortaa(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("43 minutes ago"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://s2.bunnycdn.ru/assets/t4/s1/images/zoro-min.png"),
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      title: Text(
                        "3 swords style,..OniGiri...",
                        style: GoogleFonts.comfortaa(),
                      ),
                    ),
                    Image.network(
                        "https://imgs.search.brave.com/3x4w2Vt3Xi9HxCyZdVTOLjt62W1tajk-A_6790aP7sw/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJiYXQuY29t/L2ltZy8xMzQ4NTMt/cm9yb25vYS16b3Jv/LTRrLThrLWhkLW9u/ZS1waWVjZS13YWxs/cGFwZXIuanBn"),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isLiked2 = !isLiked2;
                            });
                          },
                          icon: Icon(Icons.thumb_up),
                          color: isLiked2 ? const Color.fromARGB(255, 255, 17, 0) : Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // card 3
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 50,
                color: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Monkey D Luffy",
                        style:
                            GoogleFonts.comfortaa(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("50 minutes ago"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://imgs.search.brave.com/L8EY_R_qehy7r9ifhiJpLb8iPaXfxugiaOwzUKF4rEI/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzkzLzU0/L2NmLzkzNTRjZjI4/MmYxMDNhOTBmZWIx/MGNhMzc1Mjg5ZWNh/LmpwZw"),
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      title: Text(
                        "I'm Gonna Be the king of the pirates",
                        style: GoogleFonts.comfortaa(),
                      ),
                    ),
                    Image.network(
                        "https://imgs.search.brave.com/SuJ2BXEQ7rdP854JTMSzJLbG0bde60sAh0yRfySRcc4/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXM1LmFscGhhY29k/ZXJzLmNvbS82NTAv/NjUwMDA3LmpwZw"),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isLiked3 = !isLiked3;
                            });
                          },
                          icon: Icon(Icons.thumb_up),
                          color: isLiked3 ? const Color.fromARGB(255, 255, 17, 0) : Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //card 4
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 50,
                color: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "White Beard",
                        style:
                            GoogleFonts.comfortaa(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("2 Years Ago"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://imgs.search.brave.com/HjV0esIfgIIgl2WE8Xh_47CeQZbe688TNY4xi55H4ls/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDIyMzg1/MzQuanBn"),
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      title: Text(
                        "One piece is real",
                        style: GoogleFonts.comfortaa(),
                      ),
                    ),
                    Image.network(
                        "https://imgs.search.brave.com/JkrYDdHPqe2rnyVMc6oYsar151LfvdLigQVB6A_loUw/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2I4Lzc2/L2JmL2I4NzZiZjFh/MGZhMDM2YjhhN2My/ZWM3ZTBhNmNlNGVh/LmpwZw"),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isLiked4 = !isLiked4;
                            });
                          },
                          icon: Icon(Icons.thumb_up),
                          color: isLiked4 ? const Color.fromARGB(255, 255, 17, 0) : Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // card 5

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 50,
                color: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Gol D Roger",
                          style: GoogleFonts.comfortaa(
                              fontWeight: FontWeight.bold)),
                      subtitle: Text("25 years ago"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://imgs.search.brave.com/PzTgdoaOswPYg4HR_PoLKZLq6RPps7lEkclrk53v1A8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtd2l4bXAtZWQz/MGE4NmI4YzRjYTg4/Nzc3MzU5NGMyLndp/eG1wLmNvbS9mLzIz/NzZiMmVkLTA0NjQt/NDQxMy04Mjg1LTlm/YmZjZGEzZjIyMC9k/ZGlnNXR1LWI3Mzll/ZmIyLTQ1MGQtNDcx/NC1iNWM3LWJjZDBj/YzViYWZiMC5wbmcv/djEvZml0L3dfNDE0/LGhfMjk5L2dvbF9k/X19yb2dlcl9fX19v/bmVfcGllY2VfY2Fw/X185NTdfYnlfZ29s/ZGVuaGFuc19kZGln/NXR1LTQxNHcucG5n/P3Rva2VuPWV5SjBl/WEFpT2lKS1YxUWlM/Q0poYkdjaU9pSklV/ekkxTmlKOS5leUp6/ZFdJaU9pSjFjbTQ2/WVhCd09qZGxNR1F4/T0RnNU9ESXlOalF6/TnpOaE5XWXdaRFF4/TldWaE1HUXlObVV3/SWl3aWFYTnpJam9p/ZFhKdU9tRndjRG8z/WlRCa01UZzRPVGd5/TWpZME16Y3pZVFZt/TUdRME1UVmxZVEJr/TWpabE1DSXNJbTlp/YWlJNlcxdDdJbWhs/YVdkb2RDSTZJanc5/TnprMElpd2ljR0Yw/YUNJNklsd3ZabHd2/TWpNM05tSXlaV1F0/TURRMk5DMDBOREV6/TFRneU9EVXRPV1pp/Wm1Oa1lUTm1Nakl3/WEM5a1pHbG5OWFIx/TFdJM016bGxabUl5/TFRRMU1HUXRORGN4/TkMxaU5XTTNMV0pq/WkRCall6VmlZV1pp/TUM1d2JtY2lMQ0oz/YVdSMGFDSTZJanc5/TVRFd01DSjlYVjBz/SW1GMVpDSTZXeUox/Y200NmMyVnlkbWxq/WlRwcGJXRm5aUzV2/Y0dWeVlYUnBiMjV6/SWwxOS5Zb2ZiZFgt/QUFEX0NtUENJcXM2/Ny1fUGRaVHBDQk5Y/b1VyTVFWUXlhcXF3"),
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      title: Text(
                          "You want my treasure? You can have it! I left everything I gathered together in one place, now you just have to find it!",
                          style: GoogleFonts.comfortaa()),
                    ),
                    Image.network(
                        "https://imgs.search.brave.com/YyeU7cybaChgaEBRA_dKbX2N4GDp7JUGYpCw1byOOUg/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/ZGV4ZXJ0by5jb20v/Y2RuLWNnaS9pbWFn/ZS93aWR0aD0zODQw/LHF1YWxpdHk9NzUs/Zm9ybWF0PWF1dG8v/aHR0cHM6Ly9lZGl0/b3JzLmRleGVydG8u/Y29tL3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDIzLzA1LzA1L29u/ZS1waWVjZS1yb2dl/ci1kaXZpbmUtZGVw/YXJ0dXJlLmpwZWc"),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isLiked5 = !isLiked5;
                            });
                          },
                          icon: Icon(Icons.thumb_up),
                          color: isLiked5 ? const Color.fromARGB(255, 255, 17, 0) : Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void logOutBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Logout",
              style: GoogleFonts.orbitron(),
            ),
            content: Text(
              "Ready to Logout ?",
              style: GoogleFonts.gabriela(),
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    signout(context);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFF07090F))),
                  child: Text("Yes")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFF07090F))
                          ),

                  child: Text("No"))
            ],
          );
        });
  }

  signout(BuildContext ctx) async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    await _sharedPrefs.clear();

    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => LoginScreen()), (route) => false);
    _sharedPrefs.setBool(SAVE_KEY_NAME, false);
  }
}
