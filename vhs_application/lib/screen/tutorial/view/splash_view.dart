import 'package:flutter/material.dart';
import 'package:vhs_application/core/constants/app/strings/Strings.dart';

import '../../../core/config/size_config.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    double screenHeight = SizeConfig.blockSizeVertical!;
    double screenWidth = SizeConfig.blockSizeHorizontal!;
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Stack(
            children: [
              Center(child: Image.asset(LOGO_IMG)),
              SizedBox(
                height: screenHeight * 40,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: screenHeight * 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "9",
                        style: TextStyle(
                            fontSize: 47,
                            fontWeight: FontWeight.w500,
                            color: Colors.red),
                      ),
                      Text(
                        "APPS",
                        style: TextStyle(
                            fontSize: 47,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
