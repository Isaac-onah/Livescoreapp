
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soccerrank/api/classs.dart';
import 'package:soccerrank/screens/leaguedetails.dart';
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
  late Taable taable;

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
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Expanded(child: Image.asset("asset/bk.png", fit: BoxFit.fitWidth)),
                     ],
                   ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         children: [
                           Text("Hello! Isaac",
                      style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                  )),)
                         ],
                       ),
                       Text("Welcome back!",
                         style: GoogleFonts.poppins(
                             textStyle: TextStyle(
                                 color: Colors.white,
                                 fontSize: 30,
                                 fontWeight: FontWeight.normal
                             )),),
                       SizedBox(height:4),
                       Text("Catch up the latest from your favorite league and club",
                         style: GoogleFonts.poppins(
                             textStyle: TextStyle(
                                 color: Colors.white,
                                 fontSize: 11,
                                 fontWeight: FontWeight.normal
                             )),),
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
      return Container(
       height: MediaQuery.of(context).size.height * 0.50,
        child:GridView(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          children: [
            Padding(
              padding:EdgeInsets.all(MediaQuery.of(context).size.width*0.01),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>leagueDetails(leagueName:"Champions League", logoname: "asset/champp.png",)));
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            top:0,
                            bottom:15),
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
                                    child:Image.asset("asset/cl.png", fit: BoxFit.fitWidth),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      border: Border(bottom:BorderSide( color: Colors.grey, width: 2))

                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Champions League',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold
                                            )),),
                                      Text('England',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal
                                            )),),
                                    ],
                                  ),
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
            ),
            Padding(
              padding:EdgeInsets.all(MediaQuery.of(context).size.width*0.01),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>leagueDetails(leagueName:"Serie A", logoname: "asset/serie.png",)));
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            top:18,
                            bottom:0),
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
                                    child:Image.asset("asset/seriaa.png", fit: BoxFit.fitWidth),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      border: Border(bottom:BorderSide( color: Colors.grey, width: 2))

                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Seria A',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold
                                            )),),
                                      Text('Italy',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal
                                            )),),
                                    ],
                                  ),
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
            ),
            Padding(
              padding:EdgeInsets.all(MediaQuery.of(context).size.width*0.01),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>leagueDetails(leagueName:"La Liga", logoname: "asset/LaLiga.png",)));
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            top:0,
                            bottom:15),
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
                                    child:Image.asset("asset/lliga.png", fit: BoxFit.fitWidth),
                                  ),
                                ),
                                Container(

                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      border: Border(bottom:BorderSide( color: Colors.grey, width: 2))

                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('LaLiga',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold
                                            )),),
                                      Text('Spain',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal
                                            )),),
                                    ],
                                  ),
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
            ),
            Padding(
              padding:EdgeInsets.all(MediaQuery.of(context).size.width*0.01),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>leagueDetails(leagueName:"Premier League", logoname: "asset/barclay.png",)));
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            top:18,
                            bottom:0),
                        child: Center(
                          child: Container(

                            width: size.width/2.3,
                            height: size.height/1.5,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey, width: 1)

                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    padding:EdgeInsets.all(MediaQuery.of(context).size.width*0.01),
                                    child:Image.asset("asset/pl.png", fit: BoxFit.fitWidth),
                                  ),
                                ),
                                Container(

                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      border: Border(bottom:BorderSide( color: Colors.grey, width: 2))

                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Premier League',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold
                                            )),),
                                      Text('England',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal
                                            )),),
                                    ],
                                  ),
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
            ),
            Padding(
              padding:EdgeInsets.all(MediaQuery.of(context).size.width*0.01),
              child: InkWell(
                onTap: () {

                },
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            top:0,
                            bottom:15),
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
                                    child:Image.asset("asset/pseria.png", fit: BoxFit.fitWidth),
                                  ),
                                ),
                                Container(

                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      border: Border(bottom:BorderSide( color: Colors.grey, width: 2))

                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Liga Nos',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold
                                            )),),
                                      Text('Portugal',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal
                                            )),),
                                    ],
                                  ),
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
            ),
            Padding(
              padding:EdgeInsets.all(MediaQuery.of(context).size.width*0.01),
              child: InkWell(
                onTap: () {

                },
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            top:18,
                            bottom:0),
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
                                    child:Image.asset("asset/bliga.png", fit: BoxFit.fitWidth),
                                  ),
                                ),
                                Container(

                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      border: Border(bottom:BorderSide( color: Colors.grey, width: 2))

                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Bundes Liga',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold
                                            )),),
                                      Text('German',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal
                                            )),),
                                    ],
                                  ),
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
            ),
          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.8),
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


