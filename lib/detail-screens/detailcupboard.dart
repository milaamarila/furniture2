import 'package:flutter/material.dart';
import 'package:furniture/homepage.dart';
import 'package:furniture/screens/dashboard.dart';

class detailCupboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            new Stack(
              children: <Widget>[
                new Image.asset(
                  'images/favorite/cupboardmini.png',
                  fit: BoxFit.cover,
                ),
                new Positioned(
                  left: 10,
                  child: new IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
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
              ],
            ),

            // Padding(
            //   padding: const EdgeInsets.only(top: 8),
            //   child: Image.asset(
            //     'images/favorite/cupboardmini.png',
            //     cacheHeight: 262,
            //     cacheWidth: 350,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cupboard',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  FavoriteButton(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 22,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Description Product',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 2,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 26),
              child: MaterialButton(
                  color: Color(0xFFC8BAAE),
                  child: Text(
                    'Add to my cart',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    //untuk menuju halaman cart
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  FavoriteButtonState createState() => FavoriteButtonState();
}

class FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
