import 'package:flutter/material.dart';
import 'package:furniture/newarrival_page.dart';
import 'package:furniture/screens/dashboard.dart';
import 'package:furniture/screens/favorite.dart';
import 'package:furniture/screens/myprofile.dart';
import 'package:furniture/screens/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currenttab = 0;
  final List<Widget> screens = [Dashboard(), Favorites(), Search(), Profile()];

  @override
  Widget currentscreen = Dashboard();
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentscreen,
        bucket: PageStorageBucket(),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentscreen = Dashboard();
                    currenttab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: (currenttab == 0 ? Colors.blue : Colors.grey),
                    ),
                    Text(
                      'Dashboard',
                      style: TextStyle(
                          color: (currenttab == 0 ? Colors.blue : Colors.grey)),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentscreen = Favorites();
                    currenttab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: (currenttab == 1 ? Colors.blue : Colors.grey),
                    ),
                    Text(
                      'Favorites',
                      style: TextStyle(
                          color: (currenttab == 1 ? Colors.blue : Colors.grey)),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentscreen = Search();
                    currenttab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: (currenttab == 2 ? Colors.blue : Colors.grey),
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                          color: (currenttab == 2 ? Colors.blue : Colors.grey)),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentscreen = Profile();
                    currenttab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: (currenttab == 3 ? Colors.blue : Colors.grey),
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                          color: (currenttab == 3 ? Colors.blue : Colors.grey)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
