import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../view_model/bloc/exams/exams_cubit.dart';
import '../components/core/card_item.dart';

class MidetermsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExamsCubit()..getData(),
      child: BlocConsumer<ExamsCubit, ExamsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          ExamsCubit myCubit = ExamsCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.deepOrange,
                  ),
                ),
                title: Text(
                  'Midterms',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_alt,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
                backgroundColor: Colors.white,
                elevation: 10.0,
              ),
              body: SingleChildScrollView(
                child: myCubit.exams == null
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: myCubit.midterms.length,
                        itemBuilder: (context, index) {
                          return cardItem(
                            myCubit.midterms[index].examSubject.toString(),
                            myCubit.midterms[index].examDate.toString(),
                            myCubit.midterms[index].examStartTime.toString(),
                            myCubit.midterms[index].examEndTime.toString(),
                          );
                        }),
              ),
            ),
          );
        },
      ),
    );
  }
}
