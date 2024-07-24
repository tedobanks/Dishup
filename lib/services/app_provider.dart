import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppProvider extends ChangeNotifier {
  // Sign In Controllers
  TextEditingController signInEmailController = TextEditingController();
  TextEditingController signInPasswordController = TextEditingController();
  // Sign Up Controllers
  TextEditingController signUpNameController = TextEditingController();
  TextEditingController signUpEmailController = TextEditingController();
  TextEditingController signUpPasswordController = TextEditingController();
  TextEditingController signUpPasswordConfirmController =
      TextEditingController();

  // Input field border widget
  OutlineInputBorder CustomInputBorder(BuildContext context, height) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: height / 562.66,
        color: Theme.of(context).indicatorColor,
      ),
      borderRadius: BorderRadius.circular(height / 84.4),
    );
  }

  bool isTcClicked = false;
  void toggleTc(bool condition) {
    isTcClicked = condition;
    notifyListeners();
  }

  void navigate(Widget destination, BuildContext context, bool isReplacement) {
    isReplacement
        ? Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => destination,
          ))
        : Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => destination,
          ));
  }

  void initialize() async {}
}
