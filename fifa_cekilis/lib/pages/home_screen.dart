import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_app_bar.dart';

import '../components/alert_dialog.dart';
import '../components/teams_container.dart';
import '../constant/constant.dart';
import 'club_choose_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  bool selected = false;
  final String title = 'Takım Kurası';
  final String hintText = 'Mert';
  final String label = 'Oyuncu Adı';
  final String addButton = 'Ekle';
  final String oyunculistesi = 'Oyuncu Listesi';
  final String kuracek = 'Kura Çek';
  final String sifirla = 'Sıfırla';
  final String kulupkurasi = 'Kulüp Kurası';
  List<String> Team1 = [];

  List<String> Team2 = [];
  List<String> Team3 = [];
  List<String> Team4 = [];
  List<String> playerlist = [];
  List<String> backgroundlist = [];

  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var buttonStyle = ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(CustomColors().ButtonColor),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))));
    return Scaffold(
      backgroundColor: CustomColors().Scaffoldbackground,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(title: title),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 20, right: 20, bottom: 20),
              child: TextFormField(
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (_controller.text.length > 0) {
                              playerlist.add(_controller.text);
                              backgroundlist.add(_controller.text);
                              _controller.clear();
                            } else {
                              showAlertDialog(context);
                            }
                          });
                        },
                        icon: Icon(Icons.add_box)),
                    hintStyle: TextStyle(fontWeight: FontWeight.w300),
                    hintText: hintText,
                    label: Text(label),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(20))),
                controller: _controller,
              ),
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    setState(() {
                      if (_controller.text.length > 0) {
                        backgroundlist.add(_controller.text);
                        playerlist.add(_controller.text);

                        _controller.clear();
                      } else {
                        showAlertDialog(context);
                      }
                    });
                  },
                  child: Text(addButton)),
            ),
            Container(
                margin: EdgeInsets.all(10),
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColors().TeamContainerColor,
                ),
                height: 75,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(oyunculistesi),
                          Spacer(),
                          Text(playerlist.length.toString())
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(child: Text(playerlist.join('  '))),
                    ],
                  ),
                )),
            Container(
              width: 300,
              child: ElevatedButton(
                style: buttonStyle,
                onPressed: () {
                  setState(() {
                    backgroundlist.shuffle();
                    int max = 0;
                    if (playerlist.length.isOdd) {
                      showAlertDialog2(context);
                    }
                    if (playerlist.isEmpty) {
                      showAlertDialog(context);
                    }
                    drawAlgorithm(max);
                  });
                },
                child: Text(kuracek),
              ),
            ),
            teamsContainer(
              Team1: Team1,
              Team2: Team2,
              Team3: Team3,
              Team4: Team4,
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    setState(() {
                      Team1.clear();
                      Team2.clear();
                      Team3.clear();
                      Team4.clear();
                      playerlist.clear();
                      backgroundlist.clear();
                    });
                  },
                  child: Text(sifirla)),
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => ClubChooseScreen(
                            team1: Team1,
                            team2: Team2,
                            team3: Team3,
                            team4: Team4))));
                  },
                  child: Text(kulupkurasi)),
            )
          ],
        ),
      ]),
    );
  }

  void drawAlgorithm(int max) {
    max = 0;
    switch (backgroundlist.length) {
      case 4:
        Team2.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team1.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team2.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team1.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);

        break;
      case 6:
        Team2.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team1.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team2.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team1.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team3.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team3.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);

        break;
      case 8:
        Team2.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team4.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team2.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team1.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team3.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team4.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team3.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);
        Team1.add(backgroundlist[max]);
        backgroundlist.remove(backgroundlist[max]);

        break;

      default:
    }
  }
}
