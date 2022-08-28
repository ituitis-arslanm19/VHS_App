import 'package:flutter/material.dart';

import '../../../core/config/size_config.dart';
import '../../../core/constants/app/strings/Strings.dart';
import '../../../core/widgets/buttons/camera_button3.dart';

class PreviewView extends StatelessWidget {
  const PreviewView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    double screenHeight = SizeConfig.blockSizeVertical!;
    double screenWidth = SizeConfig.blockSizeHorizontal!;
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(BACKGROUND_IMG), fit: BoxFit.cover)),
      child: Column(
        children: [
          buildTopTexts(screenWidth),
          SizedBox(
            height: screenHeight * 3,
          ),
          Container(
            color: Colors.grey,
            child: SizedBox(
              width: screenWidth * 80,
              height: screenHeight * 55,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: screenHeight * 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("ADJUSTMENTS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              ),
              CameraButton3(
                width: screenWidth * 80,
                height: screenHeight * 5.5,
                textSize: 16,
                onPressed: () {},
                text: "GLITCH",
              ),
              SizedBox(height: screenHeight * 0.9),
              CameraButton3(
                width: screenWidth * 80,
                height: screenHeight * 5.5,
                textSize: 16,
                onPressed: () {},
                text: "RGB",
              ),
              SizedBox(height: screenHeight * 0.9),
              CameraButton3(
                width: screenWidth * 80,
                height: screenHeight * 5.5,
                textSize: 16,
                onPressed: () {},
                text: "CONTRAST",
              ),
            ],
          )
        ],
      ),
    ));
  }

  Row buildTopTexts(double screenWidth) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 46) +
                const EdgeInsets.only(left: 26),
            child: Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Text(
                    "BACK",
                    style: TextStyle(
                        fontSize: 28,
                        color: Color.fromRGBO(255, 59, 48, 1),
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: () => {},
                ))),
        SizedBox(
          width: 20 * screenWidth,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 46),
          child: Text(
            "PREVIEW",
            style: TextStyle(
                fontSize: 28, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
