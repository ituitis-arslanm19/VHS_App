import 'package:flutter/material.dart';
import 'package:vhs_application/core/config/size_config.dart';
import 'package:vhs_application/screen/tutorial/view/tutorial_view_2.dart';

import '../../../core/constants/app/strings/Strings.dart';

class TutorialView extends StatelessWidget {
  const TutorialView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    double screenHeight = SizeConfig.blockSizeVertical!;
    double screenWidth = SizeConfig.blockSizeHorizontal!;

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 6),
              Container(
                width: screenWidth * 100,
                height: screenHeight * 62,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    image: DecorationImage(
                        image: AssetImage(TUTORIAL_1_IMG), fit: BoxFit.cover)),
              ),
              SizedBox(height: screenHeight * 1.2),
              Center(
                child: Text(
                  "VHS CAMERA",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 45),
                ),
              ),
              SizedBox(height: screenHeight * 1.1),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Turn your phone",
                      style: TextStyle(
                          color: Color.fromRGBO(142, 142, 147, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                    Text(
                      "into a VHS camera",
                      style: TextStyle(
                          color: Color.fromRGBO(142, 142, 147, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                    SizedBox(height: screenHeight * 1.2),
                    Container(
                        width: screenWidth * 95,
                        height: screenHeight * 7,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 59, 48, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            child: Center(
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                    fontSize: 34,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TutorialView2()));
                            },
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
