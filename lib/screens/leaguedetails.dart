import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soccerrank/api/classs.dart';
import 'package:soccerrank/screens/widgets.dart';
import 'package:soccerrank/style/colors.dart';
import 'package:http/http.dart' as http;

class leagueDetails extends StatefulWidget {
  final String leagueName;
  final String logoname;

  leagueDetails({ required this.leagueName, required this.logoname});

  @override
  _leagueDetailsState createState() => _leagueDetailsState();
}

class _leagueDetailsState extends State<leagueDetails> {
  late bool _loading;
 late Taable? taable;

  @override
  void initState() {
    super.initState();
    _loading = false;
    getTable();
    // get();
  }



  Future getTable() async{
    setState(() {
      _loading = true;
    });
    var headers = {
      'X-Auth-Token': 'ed2bac5181fc4d75aa46cddca9c3acbe',
      'x-rapidapi-host': 'v3.football.api-sports.io'
    };
    var request = http.Request('GET', Uri.parse('https://api.football-data.org/v4/competitions/PL/standings'));

    request.headers.addAll(headers);


    http.StreamedResponse streamedresponse = await request.send();
    var response = await http.Response.fromStream(streamedresponse);
    if (response.statusCode == 200) {
      print(await response.body);
      taable = taableFromJson(response.body);
     print (taable!.standings.length);
      print ("taable!.standings.length");

      setState(() {
        _loading = false;
      });
    } else {
      print(response.statusCode);
    }

  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 100,
          foregroundColor: AppColors.purple,
          backgroundColor: Colors.white,
          title:  Image.asset(
           widget.logoname, width: 85,
          ),
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
                      child: ListView.builder(
                        itemCount: 4,
                          physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          itemBuilder: (BuildContext context, int index){
                          return matchLabel(home:"Barcelona",homelogo: "asset/baca.png",homescore:'4',awayscore: '2',awaylogo:"asset/manc.png", away: "Man City");
                          },)),
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
                            rows: List.generate(1, (index) {
                              // final y = taable.standings[index].customer.firstname +
                              //     " " +
                              //     loans.results[index].customer.lastname;
                              //
                              // final x = loans.results[index].loanParticulars.amountApplied;
                              // final z = loans.results[index].stage.name;
                              // final w = loans.results[index].loanApplicationStatus.name;

                              return DataRow(cells: [
                                DataCell(Container(width: 75, child: Text("tble"))),
                                DataCell(Container(child: Text("x"))),
                                DataCell(Container(child: Text('w'))),
                                DataCell(Container(child: Text("z"))),
                                DataCell(Container(width: 75, child: Text("y"))),
                                DataCell(Container(child: Text("x"))),
                                DataCell(Container(child: Text('w'))),
                                DataCell(Container(child: Text("z")))
                              ]);
                            }),
                            // rows: <DataRow>[
                            //   DataRow(
                            //     cells: <DataCell>[
                            //       DataCell(Text('1')),
                            //       DataCell(Container(
                            //         width: 200,
                            //         child: Row(
                            //           mainAxisAlignment: MainAxisAlignment.start,
                            //           children: [
                            //             Padding(
                            //               padding: EdgeInsets.symmetric(
                            //                   horizontal: 8.0),
                            //               child: Image.asset(
                            //                 "asset/manc.png",
                            //               ),
                            //             ),
                            //             Text('Manchester City')
                            //           ],
                            //         ),
                            //       )),
                            //       DataCell(Text('34')),
                            //       DataCell(Text('26')),
                            //       DataCell(Text('5')),
                            //       DataCell(Text('3')),
                            //       DataCell(Text('63')),
                            //       DataCell(Text('83')),
                            //     ],
                            //   ),
                            //   DataRow(
                            //     cells: <DataCell>[
                            //       DataCell(Text('2')),
                            //       DataCell(Container(
                            //         width: 200,
                            //         child: Row(
                            //           mainAxisAlignment: MainAxisAlignment.start,
                            //           children: [
                            //             Padding(
                            //               padding: EdgeInsets.symmetric(
                            //                   horizontal: 8.0),
                            //               child: Image.asset(
                            //                 "asset/liver.png",
                            //               ),
                            //             ),
                            //             Text('Liverpool')
                            //           ],
                            //         ),
                            //       )),
                            //       DataCell(Text('34')),
                            //       DataCell(Text('25')),
                            //       DataCell(Text('7')),
                            //       DataCell(Text('2')),
                            //       DataCell(Text('64')),
                            //       DataCell(Text('82')),
                            //     ],
                            //   ),
                            //   DataRow(
                            //     cells: <DataCell>[
                            //       DataCell(Text('3')),
                            //       DataCell(Container(
                            //         width: 200,
                            //         child: Row(
                            //           mainAxisAlignment: MainAxisAlignment.start,
                            //           children: [
                            //             Padding(
                            //               padding: EdgeInsets.symmetric(
                            //                   horizontal: 8.0),
                            //               child: Image.asset(
                            //                 "asset/chaci.png",
                            //               ),
                            //             ),
                            //             Text('Chelsea')
                            //           ],
                            //         ),
                            //       )),
                            //       DataCell(Text('34')),
                            //       DataCell(Text('19')),
                            //       DataCell(Text('9')),
                            //       DataCell(Text('6')),
                            //       DataCell(Text('68')),
                            //       DataCell(Text('66')),
                            //     ],
                            //   ),
                            //   DataRow(
                            //     cells: <DataCell>[
                            //       DataCell(Text('4')),
                            //       DataCell(Container(
                            //         width: 200,
                            //         child: Row(
                            //           mainAxisAlignment: MainAxisAlignment.start,
                            //           children: [
                            //             Padding(
                            //               padding: EdgeInsets.symmetric(
                            //                   horizontal: 8.0),
                            //               child: Image.asset(
                            //                 "asset/asna.png",
                            //               ),
                            //             ),
                            //             Text('Arsenal')
                            //           ],
                            //         ),
                            //       )),
                            //       DataCell(Text('34')),
                            //       DataCell(Text('20')),
                            //       DataCell(Text('3')),
                            //       DataCell(Text('11')),
                            //       DataCell(Text('13')),
                            //       DataCell(Text('63')),
                            //     ],
                            //   ),
                            //   DataRow(
                            //     cells: <DataCell>[
                            //       DataCell(Text('5')),
                            //       DataCell(Container(
                            //         width: 200,
                            //         child: Row(
                            //           mainAxisAlignment: MainAxisAlignment.start,
                            //           children: [
                            //             Padding(
                            //               padding: EdgeInsets.symmetric(
                            //                   horizontal: 8.0),
                            //               child: Image.asset(
                            //                 "asset/manu.png",
                            //               ),
                            //             ),
                            //             Text('Manchester United')
                            //           ],
                            //         ),
                            //       )),
                            //       DataCell(Text('34')),
                            //       DataCell(Text('16')),
                            //       DataCell(Text('10')),
                            //       DataCell(Text('10')),
                            //       DataCell(Text('7')),
                            //       DataCell(Text('58')),
                            //     ],
                            //   ),
                            //   DataRow(
                            //     cells: <DataCell>[
                            //       DataCell(Text('6')),
                            //       DataCell(Container(
                            //         width: 200,
                            //         child: Row(
                            //           mainAxisAlignment: MainAxisAlignment.start,
                            //           children: [
                            //             Padding(
                            //               padding: EdgeInsets.symmetric(
                            //                   horizontal: 8.0),
                            //               child: Image.asset(
                            //                 "asset/baca.png",
                            //               ),
                            //             ),
                            //             Text('Barcelona')
                            //           ],
                            //         ),
                            //       )),
                            //       DataCell(Text('34')),
                            //       DataCell(Text('26')),
                            //       DataCell(Text('5')),
                            //       DataCell(Text('3')),
                            //       DataCell(Text('63')),
                            //       DataCell(Text('83')),
                            //     ],
                            //   ),
                            // ],
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
