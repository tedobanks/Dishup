import 'package:dishup/gen/assets.gen.dart';
import 'package:dishup/screens/SignIn.dart';
import 'package:dishup/services/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<AppProvider>(
      builder: (context, value, child) => Scaffold(
        body: Stack(
          children: [
            Image.asset(
              Assets.images.loadingScreen.path,
              fit: BoxFit.cover,
              height: height * 1,
              width: width * 1,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: height * 0.08),
              height: height * 1,
              width: width * 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF000000).withOpacity(0.4),
                    Color(0xFF000000),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // First Half
                  Column(
                    children: [
                      Text(
                        '100K+ Recipes',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: height / 46.888,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Second Half
                  Column(
                    children: [
                      // Text Column
                      Column(
                        children: [
                          Text(
                            'Whip it\nup!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: height / 16.88,
                                color: Colors.white,
                                height: height / height,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height / 42.2,
                          ),
                          Text(
                            'Recipes for every craving.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              fontSize: height / 52.75,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: height / 16.88,
                      ),

                      // Button Cta
                      GestureDetector(
                        onTap: () {
                          value.navigate(SignIn(), context, true);
                        },
                        child: Container(
                          width: height / 3.47,
                          height: height / 16.88,
                          decoration: BoxDecoration(
                            color: Color(0xFFCC5803),
                            borderRadius: BorderRadius.circular(height / 84.4),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Start Cooking",
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: height / 52.75,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: height / 56.26,
                              ),
                              Icon(
                                FontAwesomeIcons.arrowRight,
                                size: height / 42.2,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
