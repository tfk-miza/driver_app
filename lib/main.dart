import 'package:driver_app/auth/login_screen.dart';
import 'package:driver_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'auth/register_screen.dart';

void main() {
  runApp(const Driverapp());
}

class Driverapp extends StatelessWidget {
  const Driverapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: "Driver",
      debugShowCheckedModeBanner: false,
      home: Loginscreen(),
    );
  }
}




