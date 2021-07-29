import 'package:flutter/material.dart';
import 'package:furniture/listbarang.dart';

class Detailfav extends StatelessWidget {
  final Barang place;

  const Detailfav({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(place.imageAsset),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(place.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Staatliches',
                    ))),
            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 16.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Column(
            //         children: <Widget>[
            //           Icon(Icons.calendar_today),
            //           SizedBox(height: 8.0),
            //           Text(
            //             place.openDays,
            //             style: informationTextStyle,
            //           ),
            //         ],
            //       ),
            //       Column(
            //         children: <Widget>[
            //           Icon(Icons.monetization_on),
            //           SizedBox(height: 8.0),
            //           Text(
            //             place.ticketPrice,
            //             style: informationTextStyle,
            //           ),
            //         ],
            //       ),
            //       Column(
            //         children: <Widget>[
            //           Icon(Icons.access_time),
            //           SizedBox(height: 8.0),
            //           Text(
            //             place.openTime,
            //             style: informationTextStyle,
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              margin: EdgeInsets.all(19),
              child: Text(
                place.description,
              ),
            ),
            // Container(
            //   height: 150,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: place.imageUrls.map((url) {
            //       return Padding(
            //           padding: const EdgeInsets.all(4.0),
            //           child: ClipRRect(
            //             borderRadius: BorderRadius.circular(9),
            //             child: Image.network(
            //               url,
            //             ),
            //           ));
            //     }).toList(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
