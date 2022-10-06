import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange_digita_center/constans/token.dart';
import 'package:orange_digita_center/model/news_model.dart';
import 'package:orange_digita_center/view_model/database/network/dio_helper.dart';
import 'package:orange_digita_center/view_model/database/network/end_points.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());
  static NewsCubit get(context)=>BlocProvider.of(context);
  NewsModel ?modelData;

  void getData()
  {
    DioHelper.getData(url: newsEndPoint,token: token).then((value)
    {
      if(value.statusCode==200)
        {
          modelData=NewsModel.fromJson(value.data);
          emit(NewsDataSuccess(),);


        }


    });


  }

}
