import 'package:flutter/material.dart';
import 'package:furniture/detail-screens/detailarmlesscouch.dart';
import 'package:furniture/detail-screens/detailglasswells.dart';
import 'package:furniture/detail-screens/detailgyeolchair.dart';
import 'package:furniture/detail-screens/detailjijibookshelf.dart';
import 'package:furniture/detail-screens/detailsidetabble.dart';

import 'package:furniture/screens/dashboard.dart';

class NewArrivalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //memberi warna background
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  //menumpuk gambar new arrival dan tombol cart, back
                  new Stack(
                    children: <Widget>[
                      new Image.asset('images/newarrival/newarrival.png'),
                      new Positioned(
                        left: 10,
                        child: new IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Dashboard();
                              }));
                            },
                            icon: Icon(Icons.arrow_back)),
                      ),
                      new Positioned(
                        right: 7,
                        child: new IconButton(
                            onPressed: () {
                              //isi tujuan dari shopping cart
                            },
                            icon: Icon(Icons.shopping_cart)),
                      ),
                      new Positioned(
                          top: 65,
                          left: 10,
                          child: Text(
                            'New Arrival',
                            style: TextStyle(fontSize: 32, color: Colors.black),
                          )),
                      new Positioned(
                          top: 100,
                          left: 10,
                          child: Text(
                            'Came from South Korean and Spring Season',
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          ))
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Couch',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Card(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'images/newarrival/Armless-couch.png',
                                ),
                                Text('Armless Couch')
                              ],
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return detailArmless();
                              }));
                            }),
                        MaterialButton(
                            child: Column(
                              children: <Widget>[
                                Image.asset('images/newarrival/glasswells.png'),
                                Text('Glasswells')
                              ],
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return detailGlasswells();
                              }));
                            })
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(38),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Working Set',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Card(
                    child: Row(
                      children: [
                        MaterialButton(
                            child: Column(
                              children: <Widget>[
                                Image.asset('assets/images/gyeoul-chair.png'),
                                Text('Gyeol Chair')
                              ],
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return detailGyeolChair();
                              }));
                            }),
                        MaterialButton(
                            child: Column(
                              children: <Widget>[
                                Image.asset('assets/images/side-tabble.png'),
                                Text('Side Table')
                              ],
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return detailSideTable();
                              }));
                            }),
                        MaterialButton(
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                    'assets/images/jiji-book-shelf.png'),
                                Text('Jiji Book Shelf')
                              ],
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return detailJijiBookShelf();
                              }));
                            })
                      ],
                    ),
                  ),
                ],
              ),
              // BottomAppBar(
              //   child: Container(
              //     height: 72,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [MaterialButton(minWidth: 40, onPressed: () {})],
              //     ),
              //   ),
              // ),
            ],
          ),
        ));
  }
}
