import 'package:driver_app/auth/register_screen.dart';
import 'package:driver_app/shared/helpers/app_helper.dart';
import 'package:driver_app/shared/widgets/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';

import '../screens/main_screen.dart';
import '../shared/widgets/app_widgets.dart';
import '../shared/widgets/constants.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body:
      SingleChildScrollView(
        physics: const BouncingScrollPhysics(),

        child: Padding(
          padding: const EdgeInsets.all(outerPadding),
          child: Form(
            child: Column(
              children: [
              appLogo,
              const SizedBox(height: 60,),
              const SizedBox(height: 25,),
              const Text("Login as Driver", style: TextStyle(color: Colors.white,fontSize: 24),),
              CustomTextFormFieldWidget(controller: emailController, text :"Your email" , keyboardtype: TextInputType.text,obscure: false,),
              const SizedBox(height: 12,),
              CustomTextFormFieldWidget(controller: pwdController, text: "Your Password", keyboardtype: TextInputType.text,obscure: true,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_) => const MainScreen() ));},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      child: const Text("Log in", style: TextStyle(color: Colors.white),)),
                ),
                const SizedBox(height: 12,),
                TextButton(
                    onPressed: (){
                      // Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Registerscreen()));
                      Apphelper.navigatetoscreen(context, const Registerscreen());
                    },
                    child: const Text("Don't have an account ? Create one now",style: TextStyle(color: Colors.white),)
                ),
              ],
            ),),),),);
  }
}
