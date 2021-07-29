import 'dart:html';

import 'package:flutter/material.dart';
import 'package:furniture/detail-screens/detailblacksofa.dart';
import 'package:furniture/detail-screens/detailboligbed.dart';
import 'package:furniture/detail-screens/detailcupboard.dart';
import 'package:furniture/detail-screens/detaildressingtable.dart';
import 'package:furniture/detail-screens/detailflowerframe.dart';
import 'package:furniture/detail-screens/detailglasswells.dart';
import 'package:furniture/detail-screens/detailjijibookshelf.dart';
import 'package:furniture/detail-screens/detailkennedychair.dart';
import 'package:furniture/detail-screens/detailkursikayu.dart';
import 'package:furniture/detail-screens/detailmejacermin.dart';
import 'package:furniture/detail-screens/detailnaturalbed.dart';
import 'package:furniture/detail-screens/detailpaket.dart';
import 'package:furniture/detail-screens/detailscandyframe.dart';
import 'package:furniture/detail-screens/detailseaframe.dart';
import 'package:furniture/detail-screens/detailsidetabble.dart';
import 'package:furniture/detail-screens/detailsofabiru.dart';
import 'package:furniture/listbarang.dart';
import 'package:furniture/login_page.dart';
import 'package:furniture/screens/search.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //memberi warna background
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.only(top: 4),
            child: ListView(children: <Widget>[
              //menumpuk gambar new arrival dan tombol cart, back
              new Stack(
                children: <Widget>[
                  new Image.asset('images/room.jpg', fit: BoxFit.cover),
                  new Positioned(
                    left: 10,
                    child: new IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_back)),
                  ),
                  new Positioned(
                    right: 7,
                    child: new IconButton(
                        onPressed: () {
                          //cart
                        },
                        icon: Icon(Icons.shopping_cart)),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 200.0),
                    child: Column(children: <Widget>[
                      new Text(
                        'Sale Up to 60%',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          shadows: [
                            Shadow(
                                color: Colors.white.withOpacity(0.7),
                                offset: Offset(15, 15),
                                blurRadius: 15),
                          ],
                          fontFamily: 'Oswald',
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      new Text(
                        'Only on Monday until Thursday',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          shadows: [
                            Shadow(
                                color: Colors.white.withOpacity(1),
                                offset: Offset(15, 15),
                                blurRadius: 15),
                          ],
                          fontFamily: 'Oswald',
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),

              // Container(
              //   padding: EdgeInsets.only(top: 15.0, right: 10.0),
              //   child: IconButton(
              //     icon: new Icon(
              //       Icons.shopping_cart,
              //       color: Colors.black,
              //       size: 30.0,
              //     ),
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) {
              //         return Search();
              //       }));
              //     },
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  //padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12.0),
                                topRight: Radius.circular(12.0)),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                                Colors.brown,
                                Colors.white54,
                                Colors.grey,
                              ],
                            ),
                            boxShadow: []),
                        padding: EdgeInsets.fromLTRB(50, 10, 10, 10),
                        //child: Container
                        // padding: EdgeInsets.all(2.0),
                        child: Text(
                          'New Arrivals',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                  color: Colors.white.withOpacity(0.7),
                                  offset: Offset(15, 15),
                                  blurRadius: 15),
                            ],
                            fontFamily: 'Oswald',
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(6, 2, 2, 2),
                        margin: EdgeInsets.only(right: 5.0),
                        //child: Container
                        //padding: EdgeInsets.all(2.0),
                        child: Row(
                          children: <Widget>[
                            new Text(
                              'See All',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                      color: Colors.white.withOpacity(0.7),
                                      offset: Offset(15, 15),
                                      blurRadius: 15),
                                ],
                                fontFamily: 'Oswald',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Container(
                            //   child: IconButton(
                            //     icon: new Icon(
                            //       Icons.arrow_right,
                            //       color: Colors.black,
                            //       size: 30.0,
                            //     ),
                            //     onPressed: () {
                            //       Navigator.push(
                            //         context,
                            //         MaterialPageRoute(builder: (context) {
                            //           return LoginPage();
                            //         }),
                            //       );
                            //     },
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /*listview*/
              Container(
                margin: EdgeInsets.all(10.0),
                //height: 50,
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  //scroll horizontal
                  children: <Widget>[
                    MaterialButton(
                        child: Column(
                          children: [
                            Image.asset('images/favorite/cupboardmini.png'),
                            Text('Cupboard'),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return detailCupboard();
                          }));
                        }),
                    MaterialButton(
                        child: Column(
                          children: [
                            Image.asset(
                                'images/favorite/dressingtablemini.png'),
                            Text('Dressing Table'),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return detaildressingTable();
                          }));
                        }),
                    MaterialButton(
                        child: Column(
                          children: [
                            Image.asset('images/newarrival/glasswells.png'),
                            Text('Glasswells'),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return detailGlasswells();
                          }));
                        }),
                    MaterialButton(
                        child: Column(
                          children: [
                            Image.asset('images/favorite/blacksofamini.png'),
                            Text('Blacksofa'),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return detailBlacksofa();
                          }));
                        }),
                    Expanded(
                      child: MaterialButton(
                          child: Column(
                            children: [
                              Image.asset(
                                  'images/newarrival/jiji-book-shelf.png'),
                              Text('Jiji book shelf'),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return detailJijiBookShelf();
                            }));
                          }),
                    ),
                    Expanded(
                      child: MaterialButton(
                          child: Column(
                            children: [
                              Image.asset(
                                  'images/favorite/kennedychairmini.png'),
                              Text('Kennedy Chair'),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return detailKennedy();
                            }));
                          }),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(12.0),
                              topRight: Radius.circular(12.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.brown,
                              Colors.white54,
                              Colors.grey,
                            ],
                          ),
                          boxShadow: []),
                      padding: EdgeInsets.fromLTRB(50, 10, 10, 10),
                      //child: Container
                      // padding: EdgeInsets.all(2.0),
                      child: Text(
                        'Top Trends',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          shadows: [
                            Shadow(
                                color: Colors.white.withOpacity(0.7),
                                offset: Offset(15, 15),
                                blurRadius: 15),
                          ],
                          fontFamily: 'Oswald',
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Container(
                      //width: 60,
                      padding: EdgeInsets.fromLTRB(6, 2, 2, 2),
                      margin: EdgeInsets.only(right: 5.0),
                      //child: Container
                      // padding: EdgeInsets.all(2.0),
                      child: Row(
                        children: <Widget>[
                          new Text(
                            'See All',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                    color: Colors.white.withOpacity(0.7),
                                    offset: Offset(15, 15),
                                    blurRadius: 15),
                              ],
                              fontFamily: 'Oswald',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              /*listview*/
              //layer kedua
              Container(
                margin: EdgeInsets.all(10.0),
                //height: 50,
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  //scroll horizontal
                  children: <Widget>[
                    MaterialButton(
                        child: Column(
                          children: [
                            Image.asset('images/sofabiru.png'),
                            Text('Blue Sofa'),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return detailSofabiru();
                          }));
                        }),
                    MaterialButton(
                        child: Column(
                          children: [
                            Image.asset('images/mejacermin.png'),
                            Text('Dressing Table 2'),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return detailmejacermin();
                          }));
                        }),
                    MaterialButton(
                        child: Column(
                          children: [
                            Image.asset('images/paketmejakursi.png'),
                            Text('Paket Meja dan 4 Kursi'),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return detailPaket();
                          }));
                        }),
                    MaterialButton(
                        child: Column(
                          children: [
                            Image.asset('images/kursi kayu.png'),
                            Text('Wooden Chair'),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return detailKursiKAyu();
                          }));
                        }),
                    Expanded(
                      child: MaterialButton(
                          child: Column(
                            children: [
                              Image.asset('images/newarrival/side-tabble.png'),
                              Text('Side Table'),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return detailSideTable();
                            }));
                          }),
                    ),
                  ],
                ),
              ),
// Layer ketiga
              Container(
                margin: EdgeInsets.all(10.0),
                //height: 50,
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  //scroll horizontal
                  children: <Widget>[
                    MaterialButton(
                        child: Column(
                          children: [
                            Image.asset('images/naturalbed.png'),
                            Text('Natural Bed'),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return detailNaturalbed();
                          }));
                        }),
                    MaterialButton(
                        child: Column(
                          children: [
                            Image.asset('images/boligbed.png'),
                            Text('Bolig Bed'),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return detailBoligbed();
                          }));
                        }),
                    MaterialButton(
                        child: Column(
                          children: [
                            Image.asset('images/scandyflower.png'),
                            Text('Scandy Frame'),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return detailScandy();
                          }));
                        }),
                    Expanded(
                      child: MaterialButton(
                          child: Column(
                            children: [
                              Image.asset('images/sea.png'),
                              Text('Sea Frame'),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return detailSeaFrame();
                            }));
                          }),
                    ),
                    Expanded(
                      child: MaterialButton(
                          child: Column(
                            children: [
                              Image.asset('images/flower.png'),
                              Text('Flower Frame'),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return detailFlowerframe();
                            }));
                          }),
                    ),
                  ],
                ),
              ),
            ])));
  }
}
