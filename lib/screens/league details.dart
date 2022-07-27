import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soccerrank/screens/widgets.dart';
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
              children: [
                Text("1"),
                Row(
                  children: [
                    Image.asset(
                      "asset/cl.png",
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
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          foregroundColor: AppColors.purple,
          backgroundColor: Colors.white,
          title: Text("league name"),
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(children: [
            Container(
              child: currentLabel(home:"Barcelona",homelogo: "asset/baca.png",homescore:'4',awayscore: '2',awaylogo:"asset/manc.png", away: "Man City"),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: AppColors.purple,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TabBar(
                labelPadding: EdgeInsets.zero,
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 2.0,
                labelColor: Colors.white,
                padding: EdgeInsets.all(6),
                tabs: [
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Text(
                        'Matches',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'League Table',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Fixtures',
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 300,
                child: TabBarView(children: [
                  Container(
                      child: ListView(
                          physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          children: [
                            matchLabel(home:"Barcelona",homelogo: "asset/baca.png",homescore:'4',awayscore: '2',awaylogo:"asset/manc.png", away: "Man City"),
                            matchLabel(home:"Liverpool",homelogo: "asset/liver.png",homescore:'2',awayscore: '0',awaylogo:"asset/chaci.png", away: "Chelsea"),
                            matchLabel(home:"PSG",homelogo: "asset/psg.png",homescore:'1',awayscore: '1',awaylogo:"asset/baca.png", away: "Bacelona"),
                            matchLabel(home:"Arsenal",homelogo: "asset/asna.png",homescore:'0',awayscore: '0',awaylogo:"asset/manu.png", away: "Man United"),
                            matchLabel(home:"Bayern",homelogo: "asset/baya.png",homescore:'6',awayscore: '3',awaylogo:"asset/liver.png", away: "Liverpool"),
                            matchLabel(home:"Chelsea",homelogo: "asset/chaci.png",homescore:'0',awayscore: '1',awaylogo:"asset/psg.png", away: "PSG"),
                            matchLabel(home:"Man City",homelogo: "asset/manc.png",homescore:'2',awayscore: '2',awaylogo:"asset/asna.png", away: "Arsenal"),
                            matchLabel(home:"Man United",homelogo: "asset/manu.png",homescore:'0',awayscore: '0',awaylogo:"asset/baya.png", away: "Bayern"),
                      ])),
                  Container(
                    decoration: BoxDecoration(),
                    child: ListView(
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      children: [
                        FittedBox(
                          child: DataTable(
                            columnSpacing: 30,
                            columns: const <DataColumn>[
                              DataColumn(
                                label: Text(
                                  'Pos',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Club',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Pl',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'W',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'D',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'L',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'GD',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Pts',
                                ),
                              )
                            ],
                            rows: <DataRow>[
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('1')),
                                  DataCell(Container(
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Image.asset(
                                            "asset/manc.png",
                                          ),
                                        ),
                                        Text('Manchester City')
                                      ],
                                    ),
                                  )),
                                  DataCell(Text('34')),
                                  DataCell(Text('26')),
                                  DataCell(Text('5')),
                                  DataCell(Text('3')),
                                  DataCell(Text('63')),
                                  DataCell(Text('83')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('2')),
                                  DataCell(Container(
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Image.asset(
                                            "asset/liver.png",
                                          ),
                                        ),
                                        Text('Liverpool')
                                      ],
                                    ),
                                  )),
                                  DataCell(Text('34')),
                                  DataCell(Text('25')),
                                  DataCell(Text('7')),
                                  DataCell(Text('2')),
                                  DataCell(Text('64')),
                                  DataCell(Text('82')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('3')),
                                  DataCell(Container(
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Image.asset(
                                            "asset/chaci.png",
                                          ),
                                        ),
                                        Text('Chelsea')
                                      ],
                                    ),
                                  )),
                                  DataCell(Text('34')),
                                  DataCell(Text('19')),
                                  DataCell(Text('9')),
                                  DataCell(Text('6')),
                                  DataCell(Text('68')),
                                  DataCell(Text('66')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('4')),
                                  DataCell(Container(
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Image.asset(
                                            "asset/asna.png",
                                          ),
                                        ),
                                        Text('Arsenal')
                                      ],
                                    ),
                                  )),
                                  DataCell(Text('34')),
                                  DataCell(Text('20')),
                                  DataCell(Text('3')),
                                  DataCell(Text('11')),
                                  DataCell(Text('13')),
                                  DataCell(Text('63')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('5')),
                                  DataCell(Container(
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Image.asset(
                                            "asset/manu.png",
                                          ),
                                        ),
                                        Text('Manchester United')
                                      ],
                                    ),
                                  )),
                                  DataCell(Text('34')),
                                  DataCell(Text('16')),
                                  DataCell(Text('10')),
                                  DataCell(Text('10')),
                                  DataCell(Text('7')),
                                  DataCell(Text('58')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('6')),
                                  DataCell(Container(
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Image.asset(
                                            "asset/baca.png",
                                          ),
                                        ),
                                        Text('Barcelona')
                                      ],
                                    ),
                                  )),
                                  DataCell(Text('34')),
                                  DataCell(Text('26')),
                                  DataCell(Text('5')),
                                  DataCell(Text('3')),
                                  DataCell(Text('63')),
                                  DataCell(Text('83')),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      children: [
                        FittedBox(
                          child: DataTable(
                            columnSpacing: 30,
                            horizontalMargin: 40,

                            columns: const <DataColumn>[
                              DataColumn(
                                label: Text(
                                  'Pos',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Name',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Team',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Goals',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Assists',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Penalties',
                                ),
                              ),
                            ],
                            rows: <DataRow>[
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('1')),
                                  DataCell(
                                      Container(width: 100, child: Text('Barcelona'))
                                  ),
                                  DataCell(Container(
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Image.asset(
                                            "asset/manc.png",
                                          ),
                                        ),
                                        Text('Manchester City')
                                      ],
                                    ),
                                  )),
                                  DataCell(Text('34')),
                                  DataCell(Text('26')),
                                  DataCell(Text('34')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('2')),
                                  DataCell(
                                      Container(width: 100, child: Text('Barcelona'))
                                  ),
                                  DataCell(Container(
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Image.asset(
                                            "asset/liver.png",
                                          ),
                                        ),
                                        Text('Liverpool')
                                      ],
                                    ),
                                  )),
                                  DataCell(Text('34')),
                                  DataCell(Text('25')),
                                  DataCell(Text('34')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('3')),
                                  DataCell(
                                      Container(width: 100, child: Text('Barcelona'))
                                  ),
                                  DataCell(Container(
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Image.asset(
                                            "asset/chaci.png",
                                          ),
                                        ),
                                        Text('Chelsea')
                                      ],
                                    ),
                                  )),
                                  DataCell(Text('34')),
                                  DataCell(Text('19')),
                                  DataCell(Text('34')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('4')),
                                  DataCell(
                                      Container(width: 100, child: Text('Barcelona'))
                                  ),
                                  DataCell(Container(
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Image.asset(
                                            "asset/asna.png",
                                          ),
                                        ),
                                        Text('Arsenal')
                                      ],
                                    ),
                                  )),
                                  DataCell(Text('34')),
                                  DataCell(Text('20')),
                                  DataCell(Text('34')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('5')),
                                  DataCell(
                                      Container(width: 100, child: Text('Barcelona'))
                                  ),
                                  DataCell(Container(
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Image.asset(
                                            "asset/manu.png",
                                          ),
                                        ),
                                        Text('Manchester United')
                                      ],
                                    ),
                                  )),
                                  DataCell(Text('34')),
                                  DataCell(Text('16')),
                                  DataCell(Text('34')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('6')),
                                  DataCell(
                                      Container(width: 100, child: Text('Barcelona'))
                                    ),
                                  DataCell(Container(
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Image.asset(
                                            "asset/baca.png",
                                          ),
                                        ),
                                        Text('Barcelona')
                                      ],
                                    ),
                                  )),
                                  DataCell(Text('26')),
                                  DataCell(Text('34')),
                                  DataCell(Text('26')),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
