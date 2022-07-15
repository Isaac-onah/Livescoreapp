import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soccerrank/style/colors.dart';

class leagueDetails extends StatefulWidget {
  const leagueDetails({Key? key}) : super(key: key);

  @override
  _leagueDetailsState createState() => _leagueDetailsState();
}

class _leagueDetailsState extends State<leagueDetails> {



  Widget buildTable() {
    // List<Widget> teams = [];
    return Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [Text("1"),
                    Row(
                      children: [
                        Image.asset("asset/cl.png",
                          height: 30,
                          width: 30,
                        ),
                        Text("team name"),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("2"),
                    Text("3"),
                    Text("3"),
                    Text("2"),
                    Text("2"),
                    Text("2"),
                  ],
                ),
              ),
            ],
          ),
        );
  }






  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.purple,
          title: Text("league name"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              Container(
                height:40,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: AppColors.purple,
                  borderRadius: BorderRadius.circular(30),

                ),
                child: TabBar(
                  unselectedLabelColor:Colors.white,
                    labelColor: AppColors.purple,
                    indicator: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),padding: EdgeInsets.all(6),
                    tabs: [
                      Tab(
                        child: Text('month'),
                      ),
                      Tab(
                        child: Text('month'),
                      ),
                      Tab(
                        child: Text('month'),
                      ),
                      Tab(
                        child: Text('month'),
                      ),
                    ],

                ),
              ),
              Expanded(
                child: Container(
                  height: 300,
                  child: TabBarView(
                      children: [
                  Container(
                  decoration: BoxDecoration(
                  ),
        child: ListView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          'Pos',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Club',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'PL',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'W',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'D',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'L',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'GD',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Pts',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildTable(),
          ],
        ),
      ),
                    Container(
                      child:Text("tab2 ", style: TextStyle(color: AppColors.purple),),
                    ),
                    Container(
                      child:Text("tab3 ", style: TextStyle(color: AppColors.purple),),
                    ),
                    Container(
                      child:Text("tab4 ", style: TextStyle(color: AppColors.purple),),
                    )
                  ]),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
