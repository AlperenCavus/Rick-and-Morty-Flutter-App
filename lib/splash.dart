import 'package:flutter/material.dart';
import 'package:flutter_app/my_homepage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/rickmorty.png', height:300, width: 300),
            Text("Welcome!", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30, color: Colors.black), ),
          ],
        ),

      ),
      backgroundColor: Colors.white,
    );
    
  }
}