import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange_digita_center/constans/token.dart';
import 'package:orange_digita_center/model/exams_model.dart';
import 'package:orange_digita_center/view_model/database/network/end_points.dart';

import '../../database/network/dio_helper.dart';

part 'exams_state.dart';

class ExamsCubit extends Cubit<ExamsState> {
  ExamsCubit() : super(ExamsInitial());
  static ExamsCubit get(context)=>BlocProvider.of(context);

  ExamsModel ?exams;

  List midterms = [];
  List finals = [];

  void getData(){
    DioHelper.getData(url: examsEndPoint,token: token).then((value)
    {
      if(value.statusCode==200)
      {
        exams=ExamsModel.fromJson(value.data);


        midtermsOrFinals(exams);
        print(exams!.data);
        emit(DataRetrieved(),);

      }

    });

  }
  void midtermsOrFinals(exams)
  {
    for(int i = 0; i<exams!.data!.length; i++)
    {
      if(exams!.data![i].toJson()["final"] == true)
        finals.add(exams.data![i]);
      else
        midterms.add(exams.data![i]);
    }

  }



}
