import 'package:driver_app/auth/car_detail_screen.dart';
import 'package:driver_app/auth/login_screen.dart';
import 'package:driver_app/shared/widgets/app_widgets.dart';
import 'package:driver_app/shared/widgets/constants.dart';
import 'package:flutter/material.dart';

import '../shared/helpers/app_helper.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({Key? key}) : super(key: key);

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body:
      SingleChildScrollView(
        physics: const BouncingScrollPhysics(),

      child:Padding(
        padding: const EdgeInsets.all(outerPadding),
        child: Form(
          child: Column(
            children: [
              appLogo,
              const SizedBox(height: 60,),
              const Text("Register as Driver", style: TextStyle(color: Colors.white,fontSize: 24),),
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: "Your Name",
                  hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                ),
              ),
              const SizedBox(height: 12,),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    hintText: "Your Email",
                    hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                ),
              ),
              const SizedBox(height: 12,),
              TextFormField(
                controller: pwdController,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Your Password",
                    hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                ),
              ),
              const SizedBox(height: 12,),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    hintText: "Your Phone number",
                    hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                ),
              ),
              const SizedBox(height: 24,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                      // Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CarDetailscreen()));
                      Apphelper.navigatetoscreen(context, const CarDetailscreen());
                      },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text("Register Driver", style: TextStyle(color: Colors.white),)),
              ),
              const SizedBox(height: 12,),
              TextButton(
                  onPressed: (){
                    // Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Loginscreen()));
                    Apphelper.navigatetoscreen(context, const Loginscreen());
                  },
                  child: const Text("Already have an Account ? Log in now.",style: TextStyle(color: Colors.white),)
              ),
            ],
          ),
        ),
        ),
      ),
      );
  }
}
