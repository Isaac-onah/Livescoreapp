import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soccerrank/api/classs.dart';
import 'package:soccerrank/screens/product_card.dart';
import 'package:soccerrank/style/colors.dart';
import 'package:soccerrank/style/styles.dart';
import 'package:http/http.dart' as http;


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    _loading = false;
    getLeague();
    // get();
  }

  late bool _loading;
  late Leagues leagues;

  Future getLeague() async{
    setState(() {
      _loading = true;
    });
    var headers = {
      'X-Auth-Token': 'ed2bac5181fc4d75aa46cddca9c3acbe',
      'x-rapidapi-host': 'v3.football.api-sports.io'
    };
    var request = http.Request('GET', Uri.parse('https://api.football-data.org/v4/competitions/'));

    request.headers.addAll(headers);


    http.StreamedResponse streamedresponse = await request.send();
    var response = await http.Response.fromStream(streamedresponse);
    if (response.statusCode == 200) {
      print(await response.body);
      leagues = leaguesFromJson(response.body);
      print (leagues.competitions.length);

      setState(() {
        _loading = false;
      });
    } else {
      print(response.statusCode);
    }

  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
       children: [
         Container(
           padding: const EdgeInsets.symmetric(vertical: 10),
           height: size.height,
           width: size.width,
           decoration: const BoxDecoration(
             color: AppColors.purple
           ),
           child: SafeArea(
             child: Align(
               alignment: Alignment.topCenter,
               child: Stack(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Image.network(leagues.competitions[1].emblem, fit: BoxFit.fitWidth),
                     ],
                   ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         children: [
                           Text("Category", style: AppStyle.m12w,)
                         ],
                       ),
                       SizedBox(height:12),
                       Text("get live scorea", style: AppStyle.b32w,),
                       SizedBox(height:4),
                       Text("Choose your league", style: AppStyle.r12w,),
                     ],
                   ),
                ),]
               ),
             ),
           ),
         ),
         Align(
           alignment: Alignment.bottomCenter,
           child: Container(
             height: size.height - (size.height/4),
             width: size.width,
             padding: const EdgeInsets.symmetric(vertical: 10),
             decoration: BoxDecoration(
               color: Colors.white,
             ),
             child: ListBuild(),
           ),

         )
       ],
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget ListBuild() {
    Size size = MediaQuery.of(context).size;
    int count = null == leagues.competitions.length ? 0 : leagues.competitions.length;
      return Container(
        child:Container(
            height: MediaQuery.of(context).size.height * 0.50,
            child: GridView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: null == count ? 0 : count,
              itemBuilder: (ctx, i) {
                Competition usar = leagues.competitions[i];
                return Padding(
                  padding:EdgeInsets.all(MediaQuery.of(context).size.width*0.01),
                  child: InkWell(
                    onTap: () {

                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: i.isEven ? 0 : 18,
                                bottom: i.isEven ? 15 : 0),
                            child: Center(
                              child: Container(

                                width: size.width/2.3,
                                height: size.height/1.5,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                  border: Border.all(color: Colors.grey, width: 1)

                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding:EdgeInsets.all(MediaQuery.of(context).size.width*0.01),
                                        child:Image.network(usar.emblem, fit: BoxFit.fitWidth),
                                      ),
                                    ),
                                    Container(

                                      padding: EdgeInsets.all(16.0),
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          color: Colors.black12,
                                          border: Border(bottom:BorderSide( color: Colors.grey, width: 2))

                                      ),
                                      child: Text('supportingText'),
                                    ),
                                  ],
                                ),
                              ),
                  ),
                            ),
                          ),

                      ],
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.8),
              ),
            ),
        ),
      );
    }




}

Widget ProductCards(String title) {
    return Container(
      width: 155,
      height: 192,
      decoration: BoxDecoration(
          color: Colors.pink,
          boxShadow: [BoxShadow(
              blurRadius: 50,
              color: Colors.pinkAccent,
              offset: Offset(10,10)
          )]
      ),
      child: Column(
        children: [
          Text(title, style: AppStyle.m12b,),
          Text("Choose ", style: AppStyle.r10wt,),
        ],
      ),
    );

}


