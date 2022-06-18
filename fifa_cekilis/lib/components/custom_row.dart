import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../pages/club_choose_screen.dart';

class CustomRow extends StatelessWidget {
  CustomRow({
    Key? key,
    required this.widget,
    required this.Imagelist,
  }) : super(key: key);

  final ClubChooseScreen widget;
  final List Imagelist;
  final String playerpng = 'assets/PlayerPng.png';

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurStyle: BlurStyle.normal,
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ]),
          child: Card(
              color: CustomColors().CustomCardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          playerpng,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Image.asset(
                          playerpng,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            child: Center(
                                child: Text(
                                    widget.team1.join('                  ')))),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 50,
                        child: Imagelist[0],
                      )),
                      Expanded(
                          child: Container(
                        height: 50,
                        child: Imagelist[1],
                      )),
                      Expanded(
                          child: Container(
                        height: 50,
                        child: Imagelist[2],
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              )),
        ),
      ),
      Expanded(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.normal,
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 3),
          )
        ]),
        child: Card(
            color: CustomColors().CustomCardColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        playerpng,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Image.asset(
                        playerpng,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          child: Center(
                              child: Text(
                                  widget.team2.join('                  ')))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 50,
                      child: Imagelist[3],
                    )),
                    Expanded(
                        child: Container(
                      height: 50,
                      child: Imagelist[4],
                    )),
                    Expanded(
                        child: Container(
                      height: 50,
                      child: Imagelist[5],
                    ))
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            )),
      ))
    ]);
  }
}

class CustomRow2 extends StatelessWidget {
  CustomRow2({
    Key? key,
    required this.widget,
    required this.Imagelist,
  }) : super(key: key);

  final ClubChooseScreen widget;
  final List Imagelist;
  final String playerpng = 'assets/PlayerPng.png';

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurStyle: BlurStyle.normal,
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ]),
          child: Card(
              color: CustomColors().CustomCardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          playerpng,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Image.asset(
                          playerpng,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            child: Center(
                                child: Text(
                                    widget.team3.join('                  ')))),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 50,
                        child: Imagelist[6],
                      )),
                      Expanded(
                          child: Container(
                        height: 50,
                        child: Imagelist[7],
                      )),
                      Expanded(
                          child: Container(
                        height: 50,
                        child: Imagelist[8],
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              )),
        ),
      ),
      Expanded(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.normal,
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 3),
          )
        ]),
        child: Card(
            color: CustomColors().CustomCardColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        playerpng,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Image.asset(
                        playerpng,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          child: Center(
                              child: Text(
                                  widget.team4.join('                  ')))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 50,
                      child: Imagelist[9],
                    )),
                    Expanded(
                        child: Container(
                      height: 50,
                      child: Imagelist[10],
                    )),
                    Expanded(
                        child: Container(
                      height: 50,
                      child: Imagelist[11],
                    ))
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            )),
      ))
    ]);
  }
}
