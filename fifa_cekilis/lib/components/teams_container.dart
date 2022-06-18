import 'package:flutter/material.dart';

import '../constant/constant.dart';

class teamsContainer extends StatelessWidget {
  const teamsContainer({
    Key? key,
    required this.Team1,
    required this.Team2,
    required this.Team3,
    required this.Team4,
  }) : super(key: key);

  final List Team1;
  final List Team2;
  final List Team3;
  final List Team4;
  final String Team1name = 'Takım 1';
  final String Team2name = 'Takım 2';
  final String Team3name = 'Takım 3';
  final String Team4name = 'Takım 4';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColors().TeamContainerColor,
      ),
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text('$Team1name :'),
              Spacer(),
              Text(Team1.join('  ')),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text('$Team2name :'),
              Spacer(),
              Text(Team2.join('  ')),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text('$Team3name :'),
              Spacer(),
              Text(Team3.join('  ')),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text('$Team4name :'),
              Spacer(),
              Text(Team4.join('  ')),
            ]),
          ),
        ],
      ),
    );
  }
}
