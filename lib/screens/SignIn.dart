import 'package:dishup/gen/assets.gen.dart';
import 'package:dishup/screens/SignUp.dart';
import 'package:dishup/services/app_provider.dart';
import 'package:dishup/utilities/widgets/AuthTextField.dart';
import 'package:dishup/utilities/widgets/alt-signin-button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<AppProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: height / 40.6),
          child: SingleChildScrollView(
            child: Container(
              width: width * 1,
              height: height * 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height / 10.15,
                  ),
                  SizedBox(
                    width: width * 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: height / 28.13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          "Welcome Back!",
                          style: GoogleFonts.montserrat(
                            fontSize: height / 40.6,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF121212),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height / 16.24,
                  ),
                  SizedBox(
                    width: width * 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AuthTextField(
                          height: height,
                          controller: value.signInEmailController,
                          label: 'Email',
                          placeholderText: "Enter Email",
                          isPassword: false,
                          border: value.CustomInputBorder(context, height),
                          enabledBorder:
                              value.CustomInputBorder(context, height),
                          focusedBorder:
                              value.CustomInputBorder(context, height).copyWith(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColorDark,
                            ),
                          ),
                          errorBorder:
                              value.CustomInputBorder(context, height).copyWith(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),

                        SizedBox(
                          height: height / 20.3,
                        ),

                        AuthTextField(
                          height: height,
                          controller: value.signInPasswordController,
                          label: 'Password',
                          placeholderText: "Enter Password",
                          isPassword: true,
                          border: value.CustomInputBorder(context, height),
                          enabledBorder:
                              value.CustomInputBorder(context, height),
                          focusedBorder:
                              value.CustomInputBorder(context, height).copyWith(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColorDark,
                            ),
                          ),
                          errorBorder:
                              value.CustomInputBorder(context, height).copyWith(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),

                        SizedBox(
                          height: height / 56.26,
                        ),

                        Container(
                          width: width * 1,
                          padding: EdgeInsets.only(left: height / 81.2),
                          child: Text(
                            "Forgot Password?",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: height / 76.7272,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).primaryColorLight,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: height / 40.6,
                        ),

                        // Sign In Button
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: width * 1,
                            height: height / 15.0714,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(height / 81.2),
                              color: Theme.of(context).primaryColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Sign In',
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontSize: height / 52.75,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: height / 81.2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Spacer
                  SizedBox(
                    height: height / 20.3,
                  ),

                  // Alternative Sign in options
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: width * 0.22,
                        height: height / height,
                        margin: EdgeInsets.only(right: height / 81.2),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(height / height),
                            color: Theme.of(context).indicatorColor),
                      ),
                      Text(
                        'Or Sign in With',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: height / 70.33,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).indicatorColor,
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.22,
                        height: height / height,
                        margin: EdgeInsets.only(left: height / 81.2),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(height / height),
                            color: Theme.of(context).indicatorColor),
                      ),
                    ],
                  ),

                  // Spacer
                  SizedBox(
                    height: height / 20.3,
                  ),

                  // Alternative Sign in buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AltSigninButton(path: Assets.images.googleIcon),
                      AltSigninButton(path: Assets.images.facebookIcon)
                    ],
                  ),

                  // Spacer
                  SizedBox(
                    height: height / 20.3,
                  ),

                  // Don't have an account? Sign up
                  GestureDetector(
                    onTap: () => value.navigate(SignUp(), context, true),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don’t have an account? ',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: height / 70.33,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: 'Sign up',
                            style: GoogleFonts.poppins(
                              fontSize: height / 70.33,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).primaryColorLight,
                            ),
                          ),
                        ],
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
  }
}
