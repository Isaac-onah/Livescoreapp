// import 'package:flutter/material.dart';
// import 'package:soccerrank/api/classs.dart';
// import 'package:soccerrank/style/colors.dart';
//
// class ProductCard extends StatelessWidget {
//   ProductCard({
//     Key? key,
//     required this.itemIndex,
//     required this.leagues, this.press,
//   });
//
//   final int itemIndex;
//   late Leagues leagues;
//   final void Function()? press;
//
//   @override
//   Widget build(BuildContext context) {
//     // It  will provide us total height and width of our screen
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: EdgeInsets.symmetric(
//         horizontal: kDefaultPadding / 1.5,
//         vertical: kDefaultPadding / 2,
//       ),// color: Colors.blueAccent,
//       // height: 130,
//       child: InkWell(
//         onTap: press,
//         child: Stack(
//           children: <Widget>[
//             // Those are our background
//             Container(
//               height: 80,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(22),
//                 color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
//                 boxShadow: [kDefaultShadow],
//               ),
//               child: Container(
//                 margin: EdgeInsets.only(left: 10),
//                 decoration: BoxDecoration(
//                   color: Color(0xFF1D1F3A),
//                   borderRadius: BorderRadius.circular(22),
//                 ),
//                 child: Row(
//                   children: [
//                     Flexible(
//                       child: Row(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Row(
//                                   children: [
//                                        Column(
//                                          crossAxisAlignment: CrossAxisAlignment.start,
//                                          mainAxisAlignment: MainAxisAlignment.center,
//                                          children: [
//                                            Text(
//                                              "${leagues.filters.client == "null" ? '': leagues.filters.client}",
//                                             ),
//                                          ],
//                                        ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Spacer(),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: [
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                 children: [
//                                   Container(
//                                     padding: EdgeInsets.symmetric(
//                                       horizontal: kDefaultPadding * 1.5, // 30 padding
//                                       vertical: kDefaultPadding *0.05, // 5 top and bottom
//                                     ),
//                                     decoration: BoxDecoration(
//                                       color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
//                                       borderRadius: BorderRadius.only(
//                                         bottomRight: Radius.circular(22),
//                                         topLeft: Radius.circular(22),
//                                       ),
//                                     ),
//                                     child: Padding(
//                                       padding:EdgeInsets.all(5.0),
//                                       child: Text(
//                                         "Delete",style: TextStyle(color: Colors.white),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             // our product
//             // Product title and price
//           ],
//         ),
//       ),
//     );
//   }
// }