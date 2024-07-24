import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AltSigninButton extends StatelessWidget {
  const AltSigninButton({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 16.88,
      width: height / 16.88,
      padding: EdgeInsets.all(height / 84.4),
      margin: EdgeInsets.symmetric(horizontal: height / 42.2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height / 84.4),
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: height / height,
            blurRadius: 7,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: SvgPicture.asset(path),
    );
  }
}
