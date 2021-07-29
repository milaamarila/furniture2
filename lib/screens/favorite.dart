import 'dart:math';

import 'package:flutter/material.dart';
import 'package:furniture/detail-screens/detailblacksofa.dart';
import 'package:furniture/detail-screens/detailcupboard.dart';
import 'package:furniture/detail-screens/detaildressingtable.dart';
import 'package:furniture/detail-screens/detailjijibookshelf.dart';
import 'package:furniture/detail-screens/detailkennedychair.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFD),
        title: Text('Favorite', style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 2),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: EdgeInsets.all(5),
          children: [
            MaterialButton(
                child: Column(
                  children: [
                    Image.asset('images/favorite/blacksofamini.png'),
                    Text('Black Sofa'),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return detailBlacksofa();
                  }));
                }),
            MaterialButton(
                child: Column(
                  children: [
                    Image.asset('images/favorite/cupboardmini.png'),
                    Text('Cupboard'),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return detailCupboard();
                  }));
                }),
            MaterialButton(
                child: Column(
                  children: [
                    Image.asset('images/favorite/kennedychairmini.png'),
                    Text('Kennedy Chair'),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return detailKennedy();
                  }));
                }),
            MaterialButton(
                child: Column(
                  children: [
                    Image.asset('images/newarrival/jiji-book-shelf.png'),
                    Text('Book Shelf'),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return detailJijiBookShelf();
                  }));
                }),
            MaterialButton(
                child: Column(
                  children: [
                    Image.asset('images/favorite/dressingtablemini.png'),
                    Text('Dressing Table'),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return detaildressingTable();
                  }));
                }),
          ],
        ),
      ),
    );
  }
}

//       )
//     );
//   }
// }
      // appBar: AppBar(
      //   title: Text('Favorite'),
      // ),
      // body: ListView(
      //   children: [
//           GridView.count(
//             crossAxisCount: 3,
//             crossAxisSpacing: 20,
//             mainAxisSpacing: 20,
//             padding: EdgeInsets.all(5),
//             children: [
//               Card(
//                   margin: EdgeInsets.zero,
//                   color: Colors.white,
//                   child: Column(children: <Widget>[
//                     Expanded(
//                       flex: 1,
//                       child: Image.asset(
//                         'images/favorite/blacksofamini.png',
//                         cacheHeight: 97,
//                         cacheWidth: 116,
//                       ),
//                     ),
//                     Expanded(
//                       flex: 2,
//                       child: Column(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: <Widget>[
//                               Text(
//                                 'Black Sofa',
//                                 style: TextStyle(
//                                     fontSize: 12, fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Icon(
//                                 Icons.favorite,
//                                 color: Colors.red,
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     )
//                   ])),
//               Card(
//                   margin: EdgeInsets.zero,
//                   color: Colors.white,
//                   child: Column(children: <Widget>[
//                     Expanded(
//                       flex: 1,
//                       child: Image.asset(
//                         'images/favorite/cupboardmini.png',
//                         cacheHeight: 97,
//                         cacheWidth: 116,
//                       ),
//                     ),
//                     Expanded(
//                       flex: 2,
//                       child: Column(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: <Widget>[
//                               Text(
//                                 'CupBoard',
//                                 style: TextStyle(
//                                     fontSize: 12, fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Icon(
//                                 Icons.favorite,
//                                 color: Colors.red,
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     )
//                   ])),
//               Card(
//                   margin: EdgeInsets.zero,
//                   color: Colors.white,
//                   child: Padding(
//                     children: <Widget>[
//                     Expanded(
//                       flex: 1,
//                       child: Image.asset(
//                         'images/favorite/dressingtablemini.png',
//                         cacheHeight: 97,
//                         cacheWidth: 116,
//                       ),
//                     ),
//                     Expanded(
//                       flex: 2,
//                       child: Column(
//                         children: [
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: <Widget>[
//                               Text(
//                                 'Dressing Table ',
//                                 style: TextStyle(
//                                     fontSize: 12, fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Icon(
//                                 Icons.favorite,
//                                 color: Colors.red,
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     )
//                   ])),
//               Card(
//                   margin: EdgeInsets.zero,
//                   color: Colors.white,
//                   child: Column(children: <Widget>[
//                     Expanded(
//                       flex: 1,
//                       child: Image.asset(
//                         'images/favorite/kennedychairmini.png',
//                         cacheHeight: 97,
//                         cacheWidth: 116,
//                       ),
//                     ),
//                     Expanded(
//                       flex: 2,
//                       child: Column(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: <Widget>[
//                               Text(
//                                 'Kennedy Chair',
//                                 style: TextStyle(
//                                     fontSize: 12, fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Icon(
//                                 Icons.favorite,
//                                 color: Colors.red,
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     )
//                   ])),
//               Card(
//                   margin: EdgeInsets.zero,
//                   color: Colors.white,
//                   child: Column(children: <Widget>[
//                     Expanded(
//                       flex: 1,
//                       child: Image.asset(
//                         'assets/images/sidetable.png',
//                         cacheHeight: 97,
//                         cacheWidth: 116,
//                       ),
//                     ),
//                     Expanded(
//                       flex: 2,
//                       child: Column(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: <Widget>[
//                               Text(
//                                 'Black Sofa',
//                                 style: TextStyle(
//                                     fontSize: 12, fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Icon(
//                                 Icons.favorite,
//                                 color: Colors.red,
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     )
//                   ]))
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

          
        
        
        
        
        
//         child: GridView.count(
//           crossAxisCount: 3,
//           crossAxisSpacing: 20,
//           mainAxisSpacing: 20,
//           padding: EdgeInsets.all(5),
//           children: [
//             Card(
//               margin: EdgeInsets.zero,
//               color: Colors.white,
//               child: Column(
//                 children: <Widget>[
//                   Expanded(
//                     flex: 1,
//                     child: Image.asset(
//                       'assets/images/sidetable.png',
//                       cacheHeight: 97,
//                       cacheWidth: 116,
//                     ),
//                   ),
//                   Expanded(
//                     flex: 2,
//                     child: Column(
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: <Widget>[
//                             Text(
//                               'Black Sofa',
//                               style: TextStyle(
//                                   fontSize: 12, fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Icon(
//                               Icons.favorite,
//                               color: Colors.red,
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ));
//   }
// }
