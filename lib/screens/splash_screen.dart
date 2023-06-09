import 'dart:async';

import 'package:flutter/material.dart';

import 'main_screen.dart';

class DriverSplashscreen extends StatefulWidget {
  const DriverSplashscreen({Key? key}) : super(key: key);

  @override
  State<DriverSplashscreen> createState() => _DriverSplashscreenState();
}

class _DriverSplashscreenState extends State<DriverSplashscreen> {

  startsplashtimer() async{
    Timer(const Duration(seconds: 4),()=>{
      
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => const MainScreen()))
    });
  }


  @override
  void initState() {

    super.initState();
    startsplashtimer();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent ,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children :
      [
        Image.asset("assets/images/splash.png"),
        const SizedBox(height: 35,),

        const Text("user Driver app", style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.normal,
          fontFamily: 'Raleway'
        ),)
    ],
    ),
    );
  }
}

