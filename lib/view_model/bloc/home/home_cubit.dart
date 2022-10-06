import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange_digita_center/constans/token.dart';
import 'package:orange_digita_center/model/lecture_model.dart';
import 'package:orange_digita_center/view_model/database/network/dio_helper.dart';
import 'package:orange_digita_center/view_model/database/network/end_points.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context)=>BlocProvider.of(context);





}
