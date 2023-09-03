import 'package:driver_app/auth/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<Authstates>{
  AuthCubit() : super(AuthInitialState());


  static AuthCubit get(context) => BlocProvider.of(context);

  registerAsDriver(){}

  saveCarInfo(){
  }



}