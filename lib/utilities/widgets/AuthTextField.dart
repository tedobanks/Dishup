import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField(
      {super.key,
      required this.label,
      required this.controller,
      required this.placeholderText,
      required this.isPassword,
      required this.border,
      required this.enabledBorder,
      required this.errorBorder,
      required this.focusedBorder,
      required this.height});

  final String label;
  final TextEditingController controller;
  final String placeholderText;
  final bool isPassword;
  final OutlineInputBorder border;
  final OutlineInputBorder errorBorder;
  final OutlineInputBorder enabledBorder;
  final OutlineInputBorder focusedBorder;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: height / 60.2857,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).primaryColorDark,
            ),
          ),
        ),
        SizedBox(
          height: height / 81.2,
        ),
        TextFormField(
          
          controller: controller,
          decoration: InputDecoration(
            isDense: true,
            border: border,
            enabledBorder: enabledBorder,
            errorBorder: errorBorder,
            focusedBorder: focusedBorder,
            hintText: placeholderText,
            hintStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: height / 62.461,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).indicatorColor),
            ),
          ),
        )
      ],
    );
  }
}
