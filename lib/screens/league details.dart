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
              width: 50,
              height: 50,
              color: Colors.red,
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
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 15),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "Barcelona",
                                      textAlign: TextAlign.end,
                                    )),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/baca.png",
                                        width: 30,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.pink,
                                      width: 60,
                                      height: 30,
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('4'),
                                            VerticalDivider(),
                                            Text('2'),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/manc.png",
                                        width: 30,
                                      ),
                                    ),
                                    Expanded(child: Text("Man City")),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 15),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "Liverpool",
                                      textAlign: TextAlign.end,
                                    )),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/liver.png",
                                        width: 30,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.pink,
                                      width: 60,
                                      height: 30,
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('2'),
                                            VerticalDivider(),
                                            Text('0'),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/chaci.png",
                                        width: 30,
                                      ),
                                    ),
                                    Expanded(child: Text("Chelsea")),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 15),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "PSG",
                                      textAlign: TextAlign.end,
                                    )),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/psg.png",
                                        width: 30,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.pink,
                                      width: 60,
                                      height: 30,
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('1'),
                                            VerticalDivider(),
                                            Text('1'),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/baca.png",
                                        width: 30,
                                      ),
                                    ),
                                    Expanded(child: Text("Bacelona")),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 15),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "Arsenal",
                                      textAlign: TextAlign.end,
                                    )),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/asna.png",
                                        width: 30,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.pink,
                                      width: 60,
                                      height: 30,
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('0'),
                                            VerticalDivider(),
                                            Text('0'),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/manu.png",
                                        width: 30,
                                      ),
                                    ),
                                    Expanded(child: Text("Man United")),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 15),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "Bayern",
                                      textAlign: TextAlign.end,
                                    )),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/baya.png",
                                        width: 30,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.pink,
                                      width: 60,
                                      height: 30,
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('6'),
                                            VerticalDivider(),
                                            Text('3'),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/liver.png",
                                        width: 30,
                                      ),
                                    ),
                                    Expanded(child: Text("Liverpool")),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 15),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "Chelsea",
                                      textAlign: TextAlign.end,
                                    )),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/chaci.png",
                                        width: 30,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.pink,
                                      width: 60,
                                      height: 30,
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('0'),
                                            VerticalDivider(),
                                            Text('1'),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/psg.png",
                                        width: 30,
                                      ),
                                    ),
                                    Expanded(child: Text("PSG")),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 15),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "Man City",
                                      textAlign: TextAlign.end,
                                    )),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/manc.png",
                                        width: 30,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.pink,
                                      width: 60,
                                      height: 30,
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('2'),
                                            VerticalDivider(),
                                            Text('2'),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/asna.png",
                                        width: 30,
                                      ),
                                    ),
                                    Expanded(child: Text("Arsenal")),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 15),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "Man United",
                                      textAlign: TextAlign.end,
                                    )),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/manu.png",
                                        width: 30,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.pink,
                                      width: 60,
                                      height: 30,
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('0'),
                                            VerticalDivider(),
                                            Text('0'),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Image.asset(
                                        "asset/baya.png",
                                        width: 30,
                                      ),
                                    ),
                                    Expanded(child: Text("Bayern")),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2,
                            ),
                          ],
                        ),
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
                    child: Text(
                      "tab4 ",
                      style: TextStyle(color: AppColors.purple),
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
