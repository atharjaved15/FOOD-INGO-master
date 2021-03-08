import 'dart:async';

import 'package:flutter/material.dart';
import 'GetStarted.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AnimationController _controller = AnimationController(duration: const Duration(seconds: 2), vsync: this,);
    Animation<double> _animation = CurvedAnimation(
      curve: Curves.fastOutSlowIn,
      parent: _controller,
    );
    route() {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => GetStarted(),
      )
      );
    }
    startTime() async {
      var duration = new Duration(seconds: 6);
      return new Timer(duration,route);
    }
    startTime();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow[600],
        body: Center(
          child: Image(image: AssetImage("assets/images/logo.png"), height: MediaQuery.of(context).size.height * 0.25,),),
      ),
    );
  }
}




