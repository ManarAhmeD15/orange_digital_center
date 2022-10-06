import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../view_model/bloc/exams/exams_cubit.dart';
import '../components/core/card_item.dart';

class FinalsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExamsCubit()..getData(),
      child: BlocConsumer<ExamsCubit, ExamsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {

          ExamsCubit finalCubit = ExamsCubit.get(context);
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
                  'Finals',
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
                child: finalCubit.exams == null
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: finalCubit.finals.length,
                        itemBuilder: (context, index) {
                          return cardItem(
                            finalCubit.finals[index].examSubject.toString(),
                            finalCubit.finals[index].examDate.toString(),
                            finalCubit.finals[index].examStartTime.toString(),
                            finalCubit.finals[index].examEndTime.toString(),
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
