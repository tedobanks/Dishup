import 'package:dishup/gen/assets.gen.dart';
import 'package:dishup/screens/SignIn.dart';
import 'package:dishup/services/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../utilities/widgets/AuthTextField.dart';
import '../utilities/widgets/alt-signin-button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                    height: height / 20.3,
                  ),
                  SizedBox(
                    width: width * 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create an account",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: height / 40.6,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        // spacer
                        SizedBox(
                          height: height / 162.4,
                        ),

                        Text(
                          "Let’s help you set up your account,",
                          style: GoogleFonts.poppins(
                            fontSize: height / 70.33,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF121212),
                          ),
                        ),
                        Text(
                          "it won’t take long.",
                          style: GoogleFonts.poppins(
                            fontSize: height / 70.33,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF121212),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Spacer
                  SizedBox(
                    height: height / 28.1333,
                  ),

                  SizedBox(
                    width: width * 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Name Textfield group
                        AuthTextField(
                          height: height,
                          controller: value.signUpNameController,
                          label: 'Name',
                          placeholderText: "Enter Name",
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

                        // Spacer
                        SizedBox(
                          height: height / 40.6,
                        ),

                        // Email Textfield group
                        AuthTextField(
                          height: height,
                          controller: value.signUpEmailController,
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

                        // Spacer
                        SizedBox(
                          height: height / 40.6,
                        ),

                        // Password Textfield group
                        AuthTextField(
                          height: height,
                          controller: value.signUpNameController,
                          label: 'Password',
                          placeholderText: "Enter Password",
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

                        // Spacer
                        SizedBox(
                          height: height / 40.6,
                        ),

                        // Confirm password Textfield group
                        AuthTextField(
                          height: height,
                          controller: value.signUpNameController,
                          label: 'Confirm Password',
                          placeholderText: "Retype Password",
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

                        // Accept terms & Conditions
                        SizedBox(
                          width: width * 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Checkbox(
                                value: value.isTcClicked,
                                onChanged: (val) => value.toggleTc(val!),
                                activeColor:
                                    Theme.of(context).primaryColorLight,
                                side: BorderSide(
                                  color: Theme.of(context).primaryColorLight,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(height / 168.8),
                                ),
                              ),
                              Text(
                                'Accept terms & Condition',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: height / 70.33,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Theme.of(context).primaryColorLight),
                                ),
                              )
                            ],
                          ),
                        ),

                        // Sign Up Button
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: width * 1,
                            height: height / 14.7636,
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
                                  'Sign Up',
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

                        // Spacer
                        SizedBox(
                          height: height / 54.13,
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
                          height: height / 54.13,
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
                      ],
                    ),
                  ),

                  // Spacer
                  SizedBox(
                    height: height / 32.48,
                  ),

                  // Already a member? Sign In
                  GestureDetector(
                    onTap: () => value.navigate(SignIn(), context, true),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already a member? ',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: height / 70.33,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: 'Sign In',
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
