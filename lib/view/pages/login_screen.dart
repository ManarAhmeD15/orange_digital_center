import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orange_digita_center/view/components/core/custom_text_form.dart';
import 'package:orange_digita_center/view/pages/home_screen.dart';
import 'package:orange_digita_center/view/pages/signup_screen.dart';
import 'package:orange_digita_center/view_model/bloc/login/login_cubit.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          // OBJECT

          LoginCubit myCubit = LoginCubit.get(context);

          return MaterialApp(
            home: Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: Center(
                            child: Row(
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
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20.0, bottom: 20.0, top: 50.0),
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        customTextForm(myCubit.emailCt),
                        SizedBox(
                          height: 15.0,
                        ),
                        customTextForm(myCubit.passwordCt),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.orange[900],
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              myCubit.login(context);

                            },
                            child: Text(
                              'Login',
                              style: GoogleFonts.poppins(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Stack(
                          children: [
                            Divider(
                              height: 30.0,
                              color: Colors.black,
                            ),
                            Positioned(
                              left: 140.0,
                              top: 2.0,
                              //bottom: 29.0,

                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'OR',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              surfaceTintColor: Colors.deepOrange,
                              side: BorderSide(
                                  width: 3, color: Colors.deepOrange),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (cotext) => SignUp()));
                            },
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.poppins(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
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
