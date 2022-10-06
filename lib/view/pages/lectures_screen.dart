import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orange_digita_center/view/components/core/card_item.dart';
import 'package:orange_digita_center/view_model/bloc/lecture/lecture_cubit.dart';

class LecturesScreen extends StatelessWidget {
  const LecturesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LectureCubit()..getData(),
      child: BlocConsumer<LectureCubit, LectureState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {

    //  OBJECT
    LectureCubit myCubit =LectureCubit.get(context);
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            leading:
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.orange[900],
              ),
            ),
            title: Text(
              'Lectures',
              style:GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black
            ),
            ),
            elevation: 10.0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.filter_list_alt,
                  color: Colors.orange[900],
                  size: 30.0,
                ),
              ),
            ],
          ),
          body:
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: myCubit.modelData ==null ? Center(child: CircularProgressIndicator()) :
            ListView.builder(
                itemCount: myCubit.modelData!.data!.length,
                itemBuilder: (context,index) {

                  return cardItem(
                    myCubit.modelData!.data![index]!.lectureSubject.toString(),
                    myCubit.modelData!.data![index]!.lectureStartTime.toString(),
                    myCubit.modelData!.data![index]!.lectureEndTime.toString(),
                    myCubit.modelData!.data![index]!.lectureDate.toString(),

                  );
                }),

               // cardItem("Flutter","Wednesday","12:00 pm","4:00 pm"),
                //cardItem("React","Monday","7:00 pm","10:00 pm"),
                //cardItem("Vue","Thursday","5:00 pm","8:00 pm"),




          ),


        ),
      );
  },
),
    );
  }
}
