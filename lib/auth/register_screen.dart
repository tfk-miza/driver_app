import 'package:driver_app/auth/car_detail_screen.dart';
import 'package:driver_app/auth/cubit/cubit.dart';
import 'package:driver_app/auth/cubit/states.dart';
import 'package:driver_app/auth/login_screen.dart';
import 'package:driver_app/shared/widgets/app_widgets.dart';
import 'package:driver_app/shared/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/helpers/app_helper.dart';
import '../shared/widgets/custom_text_form_field_widget.dart';

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
      body: BlocProvider(
        create: (context) => AuthCubit(),
          child : BlocConsumer<AuthCubit, Authstates>(
            listener: (context, state){},
            builder: (context ,state){
        return  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),

        child:Padding(
        padding: const EdgeInsets.all(outerPadding),
        child: Form(
        child: Column(
        children: [
        appLogo,
        const SizedBox(height: 60,),
        const Text("Register as Driver", style: TextStyle(color: Colors.white,fontSize: 24),),
        CustomTextFormFieldWidget(controller: nameController, text :"Your Name" , keyboardtype: TextInputType.text,obscure: false,),
        const SizedBox(height: 12,),
    CustomTextFormFieldWidget(controller: emailController, text :"Your Email" , keyboardtype: TextInputType.emailAddress,obscure: false,),
    const SizedBox(height: 12,),
    CustomTextFormFieldWidget(controller: pwdController, text :"Your Password" , keyboardtype: TextInputType.text,obscure: true,),
    const SizedBox(height: 12,),
    CustomTextFormFieldWidget(controller: phoneController, text :"Your Phone number" , keyboardtype: TextInputType.phone,obscure: false,),
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
    );
},
          ),
      ),
    );
  }
}
