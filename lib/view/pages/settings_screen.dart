import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orange_digita_center/view_model/bloc/settings/settings_cubit.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: BlocConsumer<SettingsCubit, SettingsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SettingsCubit myCubit=SettingsCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              body: SafeArea(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children:[

                        Text("Settings",
                          style:GoogleFonts.poppins(fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),

                        ListTile(
                          leading: Text("FAQ",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,

                            ),),
                          trailing: Icon(Icons.arrow_forward_ios),

                        ),
                        Divider(
                          height: 5.0,
                          color: Colors.black,

                        ),
                        ListTile(
                          leading: Text("Terms & Conditions",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,

                            ),),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        Divider(
                          height: 5.0,
                          color: Colors.black,

                        ),
                        ListTile(
                          leading: Text("Our Partenrs",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,

                            ),),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        Divider(
                          height: 5.0,
                          color: Colors.black,

                        ),
                        ListTile(
                          leading: Text("Support",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,

                            ),),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        Divider(
                          height: 5.0,
                          color: Colors.black,
                        ),
                        ListTile(
                          leading: Text("Log out",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,

                            ),),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),


                      ],
                    ),
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