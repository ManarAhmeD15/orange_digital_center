import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orange_digita_center/view_model/bloc/news/news_cubit.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()..getData(),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {

          NewsCubit myCubit=NewsCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("News",
                        style:GoogleFonts.poppins(fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),),
                      SizedBox(height: 20.0,),
                      Container(
                        width: 400,
                        height: 250.0,
                        child:
                        Card(
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:

                            [
                              Container(
                                width: 300,
                                height: 240,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text('Add Notes',
                                      style: GoogleFonts.poppins(fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                      ),),
                                  Container(
                                  width: 70.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0,
                                      ),
                                      color: Colors.deepOrange
                                  ),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.share,
                                        color: Colors.white,),
                                      Icon(Icons.copy,
                                        color: Colors.white,),
                                    ],
                                  ),
                                  ),
                                  ],
                                ),

                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Orange",
                                    style: GoogleFonts.poppins(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Text(
                                      "Digital",
                                      style: GoogleFonts.poppins(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Center",
                                    style: GoogleFonts.poppins(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Text('Add Notes',
                                style: GoogleFonts.poppins(fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),



                           Stack(
                             children: [


                             ],
                           ),




                            ],
                          ),


                          color: Colors.grey,
                          elevation: 14,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),

                          ),


                          /*


                            */


                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

}