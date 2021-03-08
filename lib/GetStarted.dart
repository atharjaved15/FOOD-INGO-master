import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'SignIn.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[600],
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.10),
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 0.75,
            // color: Colors.black,
            child: Image(
              image: AssetImage("assets/images/onway.png"),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.40,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => SignIn()));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'Microsoft JhengHei',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
