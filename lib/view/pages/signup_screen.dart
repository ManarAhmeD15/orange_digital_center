import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orange_digita_center/view/pages/login_screen.dart';
import 'package:orange_digita_center/view_model/bloc/signUp/sign_up_cubit.dart';

class SignUp extends StatelessWidget {
  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SignUpCubit myCubit = SignUpCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
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
                            "Sign Up",
                            style: GoogleFonts.poppins(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextFormField(
                          cursorColor: Colors.grey,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          // controller: passwordController,
                          keyboardType: TextInputType.emailAddress,
                          // obscureText: isPassword,
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          onChanged: (value) {
                            print(value);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'password is too short! ';
                            } else
                              return null;
                          },

                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Name',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            focusColor: Colors.orange,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.blue),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.orange),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          cursorColor: Colors.grey,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          // controller: passwordController,
                          keyboardType: TextInputType.emailAddress,
                          // obscureText: isPassword,
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          onChanged: (value) {
                            print(value);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'password is too short! ';
                            } else
                              return null;
                          },

                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'E-Mail',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            focusColor: Colors.orange,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.blue),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.orange),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          cursorColor: Colors.grey,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          // controller: passwordController,

                          keyboardType: TextInputType.visiblePassword,
                          // obscureText: isPassword,
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          onChanged: (value) {
                            print(value);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'password is too short! ';
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            focusColor: Colors.orange[800],
                            suffixIcon: IconButton(
                                icon: Icon(
                                  isPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.orange,
                                ),
                                onPressed: null
                                /*
                            {
                              setState(() {
                                isPassword = !isPassword;
                              });


                            },

                             */
                                ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.blue),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.orange),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          cursorColor: Colors.grey,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          // controller: passwordController,

                          keyboardType: TextInputType.visiblePassword,
                          // obscureText: isPassword,
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          onChanged: (value) {
                            print(value);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'password is too short! ';
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            focusColor: Colors.orange[800],
                            suffixIcon: IconButton(
                                icon: Icon(
                                  isPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.orange,
                                ),
                                onPressed: null
                                /*
                            {
                              setState(() {
                                isPassword = !isPassword;
                              });


                            },

                             */
                                ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.blue),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.orange),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          cursorColor: Colors.grey,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          // controller: passwordController,
                          keyboardType: TextInputType.phone,
                          // obscureText: isPassword,
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          onChanged: (value) {
                            print(value);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'password is too short! ';
                            } else
                              return null;
                          },

                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            focusColor: Colors.orange,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.blue),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.orange),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Gender",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "University",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),

                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 90,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.deepOrange),
                                      borderRadius: BorderRadius.circular(14)),
                                  child: Center(
                                    child: DropdownButton<String>(
                                      value: myCubit.GenderList.first,
                                      icon: const Icon(Icons.arrow_drop_down),
                                      elevation: 16,
                                      underline: Container(
                                        height: 2,
                                      ),
                                      items: myCubit.GenderList.map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                      onChanged: (String? value) {
                                        // This is called when the user selects an item.
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.deepOrange),
                                      borderRadius: BorderRadius.circular(14)),
                                  child: Center(
                                    child: DropdownButton<String>(
                                      value: myCubit.UniversityList.first,
                                      icon: const Icon(Icons.arrow_drop_down),
                                      elevation: 16,
                                      underline: Container(
                                        height: 2,
                                      ),
                                      items: myCubit.UniversityList.map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                      onChanged: (String? value) {
                                        // This is called when the user selects an item.
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:10.0),
                              child: Text(
                                "Grade",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 90,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.deepOrange),
                                      borderRadius: BorderRadius.circular(14)),
                                  child: Center(
                                    child: DropdownButton<String>(
                                      value: myCubit.GradeList.first,
                                      icon: const Icon(Icons.arrow_drop_down),
                                      elevation: 16,
                                      underline: Container(
                                        height: 2,
                                      ),
                                      items: myCubit.GradeList.map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                      onChanged: (String? value) {
                                        // This is called when the user selects an item.
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height:15.0),
                          ],
                        ),


                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.orange[900],
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.poppins(
                                  fontSize: 20.0,
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

                              child: Text(
                                'OR',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  backgroundColor: Colors.white,
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
                              surfaceTintColor: Colors.white,
                              side: BorderSide(
                                  width: 3, color: Colors.deepOrange),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              'Login',
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
