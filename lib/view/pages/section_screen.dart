import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orange_digita_center/view_model/bloc/sections/sections_cubit.dart';

import '../components/core/card_item.dart';

class SectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      SectionsCubit()
        ..getData(),
      child: BlocConsumer<SectionsCubit, SectionsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SectionsCubit myCubit = SectionsCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                centerTitle: true,

                leading: IconButton(onPressed: () {
                  Navigator.pop(context);
                },
                  icon: Icon(Icons.arrow_back_ios,
                    color: Colors.deepOrange,
                  ),),
                title: Text('Sections',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black
                  ),),

                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.filter_alt,
                      color: Colors.deepOrange,
                    ),),
                ],
                backgroundColor: Colors.white,
                elevation: 10.0,
              ),


              body:
              myCubit.dataModel == null ? Center(child: CircularProgressIndicator()) :
              ListView.builder(
                  itemCount: myCubit.dataModel!.data!.length,
                  itemBuilder: (context, index) {
                    return cardItem(

                      myCubit.dataModel!.data![index]!.sectionSubject.toString(),
                      myCubit.dataModel!.data![index]!.sectionDate.toString(),
                      myCubit.dataModel!.data![index]!.sectionStartTime.toString(),
                      myCubit.dataModel!.data![index]!.sectionEndTime.toString(),

                    );


                  }


              ),


            ),
          );
        },
      ),
    );
  }

}