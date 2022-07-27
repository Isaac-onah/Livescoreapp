import 'package:flutter/material.dart';
import 'package:soccerrank/style/colors.dart';

class matchLabel extends StatelessWidget {
  final String home;
  final String homelogo;
  final String homescore;
  final String awayscore;
  final String awaylogo;
  final String away;
  const matchLabel({ required this.home, required this.homelogo, required this.homescore, required this.awayscore, required this.awaylogo, required this.away
  });
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 8.0, vertical: 15),
          child: Center(
            child: Row(
              children: [
                Expanded(
                    child: Text(
                      home,
                      textAlign: TextAlign.end,
                    )),
                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 8.0),
                  child: Image.asset(
                    homelogo,
                    width: 30,
                  ),
                ),
                Container(
                  color: AppColors.purple,
                  width: 60,
                  height: 30,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Text(homescore, style: TextStyle(color: Colors.white),),
                        VerticalDivider(color: Colors.grey,),
                        Text(awayscore, style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 8.0),
                  child: Image.asset(
                    awaylogo,
                    width: 30,
                  ),
                ),
                Expanded(child: Text(away)),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }
}