import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class forgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: Color(0xFF6E7749)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset('images/Group 11.png')],
          ),
          SizedBox(height: 20),
          SizedBox(
            child: Text('Forgot Password?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 2.5,
                ),
                textAlign: TextAlign.left),
          ),
          SizedBox(height: 8),
          SizedBox(
            child: Text(
                'Please enter your e-mail address. You will receive a link to create a new password via email.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left),
          ),
          SizedBox(height: 39),
          TextField(
            autofocus: false,
            decoration: InputDecoration(
                filled: true,
                hintText: 'E-mail',
                fillColor: Colors.white,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            style: TextStyle(
              fontSize: 18,
              color: const Color(0xFF908E8E),
            ),
          ),
          SizedBox(height: 39),
          Center(
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Color(0xFFC8BAAE)),
              child: Text(
                'Send',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
