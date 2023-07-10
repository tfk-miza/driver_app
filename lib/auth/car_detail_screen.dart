import 'package:flutter/material.dart';

import '../shared/widgets/app_widgets.dart';
import '../shared/widgets/constants.dart';
import '../shared/widgets/custom_text_form_field_widget.dart';

class CarDetailscreen extends StatefulWidget {
  const CarDetailscreen({Key? key}) : super(key: key);

  @override
  State<CarDetailscreen> createState() => _CarDetailscreenState();
}

class _CarDetailscreenState extends State<CarDetailscreen> {
  TextEditingController carModelController = TextEditingController();
  TextEditingController carNumController = TextEditingController();
  TextEditingController carTypeController = TextEditingController();
  TextEditingController carColorController = TextEditingController();

  List<String> cartypes = ["taxi", "louage"];
  String? selectedCartype;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(outerPadding),
              child: Form(
                child: Column(
                  children: [
                    appLogo,
                    const SizedBox(
                      height: 60,
                    ),
                    const Text("Please fill your Car Details", style: TextStyle(color: Colors.white,fontSize: 24),),
                    CustomTextFormFieldWidget(controller: carModelController, text :"Car Model" , keyboardtype: TextInputType.text,obscure: false,),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomTextFormFieldWidget(controller: carNumController, text :"Car Number" , keyboardtype: TextInputType.number,obscure: false,),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomTextFormFieldWidget(controller: carColorController, text :"Car color" , keyboardtype: TextInputType.text,obscure: false,),
                    const SizedBox(
                      height: 12,
                    ),
                    DropdownButton(
                      hint: const Text("select car type",style: TextStyle(color: Colors.white),),
                      dropdownColor: Colors.lightBlueAccent,
                      value: selectedCartype,
                      items: cartypes.map((carType) {
                        return DropdownMenuItem(
                          value: carType,
                          child: Text(carType, style: const TextStyle(color: Colors.white),),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          selectedCartype = value;
                        });
                      },
                    ),

                    const SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const CarDetailscreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          child: const Text(
                            "Register Car Details",
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
              ),
            )));
  }
}
