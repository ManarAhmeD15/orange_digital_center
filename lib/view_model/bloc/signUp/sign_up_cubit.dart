import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange_digita_center/constans/token.dart';
import 'package:orange_digita_center/model/sign_up_model.dart';
import 'package:orange_digita_center/view_model/database/network/dio_helper.dart';
import 'package:orange_digita_center/view_model/database/network/end_points.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  static SignUpCubit get(context)=>BlocProvider.of(context);




  SignUpModel ?modelData;

  List<String> GenderList = <String>[
    'Male',
    'Female',
  ];
  List<String> UniversityList = <String>['AUC', 'CIS', 'CIC', 'FCIS'];
  List<String> GradeList = <String>[
    'Grade 1',
    'Grade 2',
    'Grade 3',
    'Grade 4',
  ];

  void selectGender()
  {
    DioHelper.getData(url: registerEndPoint,token: token).then((value)
    {
      if(value.statusCode==200)
        modelData= SignUpModel.fromJson(value.data);

      emit(SignUpSuccess(),);


    }

    );




  }

}
