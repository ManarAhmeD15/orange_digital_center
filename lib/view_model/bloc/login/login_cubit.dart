import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:orange_digita_center/constans/token.dart';
import 'package:orange_digita_center/model/login_model.dart';
import 'package:orange_digita_center/view/pages/home_screen.dart';
import 'package:orange_digita_center/view_model/database/network/dio_helper.dart';
import 'package:orange_digita_center/view_model/database/network/end_points.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController emailCt = TextEditingController();
  TextEditingController passwordCt = TextEditingController();

  LoginModel? modelData;

  void login(context) {
    var jason = {
      "email": emailCt.text,
      "password": passwordCt.text,
    };

    print(emailCt.text);
    print(passwordCt.text);

    DioHelper.postData(url: loginEndPoint, data: jason).then((value) {
      if (value.statusCode == 200) {
        modelData = LoginModel.fromJson(value.data);
        token = modelData!.data!.accessToken.toString();
        print(token);
        if (token != "" || token != null || token.isNotEmpty) {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen(),));

          emit(LoginSuccess());
        }
      }
    }).catchError((e) {
      print(e);
    });
  }
}
