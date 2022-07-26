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
                    child: Text(
                      "tab3 ",
                      style: TextStyle(color: AppColors.purple),
                    ),
                  ),
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
                          DataCell(Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Padding(
                            padding:EdgeInsets.symmetric(horizontal: 8.0),
                            child: Image.asset("asset/baca.png",),
                          ),Text('club name')],)),
                          DataCell(Text('34')),
                          DataCell(Text('26')),
                          DataCell(Text('5')),
                          DataCell(Text('3')),
                          DataCell(Text('63')),
                          DataCell(Text('83', style: TextStyle(fontSize: 20),)),
                        ],
                      ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('1')),
                        DataCell(Text('thisclub')),
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
                        DataCell(Text('1')),
                        DataCell(Text('thisclub')),
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
                        DataCell(Text('1')),
                        DataCell(Text('thisclub')),
                        DataCell(Text('34')),
                        DataCell(Text('26')),
                        DataCell(Text('5')),
                        DataCell(Text('3')),
                        DataCell(Text('63')),
                        DataCell(Text('83')),
                      ],
                    ),DataRow(
                      cells: <DataCell>[
                        DataCell(Text('1')),
                        DataCell(Text('thisclub')),
                        DataCell(Text('34')),
                        DataCell(Text('26')),
                        DataCell(Text('5')),
                        DataCell(Text('3')),
                        DataCell(Text('63')),
                        DataCell(Text('83')),
                      ],
                    ),DataRow(
                      cells: <DataCell>[
                        DataCell(Text('1')),
                        DataCell(Text('thisclub')),
                        DataCell(Text('34')),
                        DataCell(Text('26')),
                        DataCell(Text('5')),
                        DataCell(Text('3')),
                        DataCell(Text('63')),
                        DataCell(Text('83')),
                      ],
                    ),DataRow(
                      cells: <DataCell>[
                        DataCell(Text('1')),
                        DataCell(Text('thisclub')),
                        DataCell(Text('34')),
                        DataCell(Text('26')),
                        DataCell(Text('5')),
                        DataCell(Text('3')),
                        DataCell(Text('63')),
                        DataCell(Text('83')),
                      ],
                    ),DataRow(
                      cells: <DataCell>[
                        DataCell(Text('1')),
                        DataCell(Text('thisclub')),
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
