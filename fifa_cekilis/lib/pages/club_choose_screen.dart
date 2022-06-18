import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_app_bar.dart';

import '../components/custom_row.dart';
import '../constant/constant.dart';

class ClubChooseScreen extends StatefulWidget {
  final List team1;
  final List team2;
  final List team3;
  final List team4;

  ClubChooseScreen({
    Key? key,
    required this.team1,
    required this.team2,
    required this.team3,
    required this.team4,
  }) : super(key: key);

  @override
  State<ClubChooseScreen> createState() => _Pages1State();
}

class _Pages1State extends State<ClubChooseScreen> {
  final String kulupkurasi = 'Kulüp Kurası';
  final String takimcek = 'Takım Çek';
  List Imagelist = [
    Image.asset('assets/AC_Milan.png'),
    Image.asset('assets/Ajax.png'),
    Image.asset('assets/Atletico_Madrid.png'),
    Image.asset('assets/Barcelona.png'),
    Image.asset('assets/Bayern.png'),
    Image.asset('assets/Benfica.png'),
    Image.asset('assets/Borussia_Dortmund.png'),
    Image.asset('assets/Chelsea.png'),
    Image.asset('assets/FC_Porto.png'),
    Image.asset('assets/Fenerbahce.png'),
    Image.asset('assets/Galatasaray.png'),
    Image.asset('assets/Inter.png'),
    Image.asset('assets/Juventus.png'),
    Image.asset('assets/Lazio.png'),
    Image.asset('assets/Lille.png'),
    Image.asset('assets/Liverpool.png'),
    Image.asset('assets/Manchester_United.png'),
    Image.asset('assets/Manchester_City.png'),
    Image.asset('assets/Monaco.png'),
    Image.asset('assets/PSG.png'),
    Image.asset('assets/Real_Madrid.png'),
    Image.asset('assets/Red_bull.png'),
    Image.asset('assets/Sevilla.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors().Scaffoldbackground,
        appBar: CustomAppBar(title: kulupkurasi),
        body: ListView(children: [
          Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(5),
                ),
              ),
              CustomRow(
                widget: widget,
                Imagelist: Imagelist,
              ),
              CustomRow2(widget: widget, Imagelist: Imagelist),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          CustomColors().ButtonColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  onPressed: () {
                    setState(() {
                      Imagelist.shuffle();
                    });
                  },
                  child: Text(takimcek))
            ],
          ),
        ]));
  }
}
