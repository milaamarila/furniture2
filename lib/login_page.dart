import 'package:flutter/material.dart';
import 'package:furniture/forgotpassword.dart';
import 'package:furniture/homepage.dart';

import 'package:furniture/newarrival_page.dart';
import 'package:furniture/register.dart';
import 'package:furniture/screens/dashboard.dart';
import 'package:furniture/screens/favorite.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();

  late String nUsername, nPassword;

  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color: Color(0xFFC8BAAE),
          ),
          //margin: EdgeInsets,
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset('images/woodenhomie.png'),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset('images/sofadanlukisan.jpg'),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.email, color: Colors.white),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: "Email: ",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key, color: Colors.white),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: "Password: ",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                      child: new InkWell(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return forgotPassword();
                          }));
                        },
                      )),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 50, 60, 9),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MaterialButton(
                      color: Color(0xFF6E7749),
                      minWidth: 90,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have any account? '),
                  InkWell(
                    child: Text(' Register here.'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Register();
                      }));
                    },
                  ),
                ],
              ),
            )
          ])),
    );
  }
}
