import 'package:driver_app/auth/login_screen.dart';
import 'package:driver_app/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'auth/register_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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




