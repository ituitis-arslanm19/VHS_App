import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:vhs_application/core/config/size_config.dart';
import 'package:vhs_application/core/constants/app/strings/Strings.dart';
import 'package:vhs_application/core/widgets/buttons/camera_button3.dart';
import 'package:vhs_application/core/widgets/buttons/camera_buttonS.dart';
import 'package:vhs_application/screen/home/view/take_picture_screen.dart';

import '../../../core/widgets/buttons/camera_button.dart';

class HomeView extends StatelessWidget {
  final CameraDescription camera;
  const HomeView({Key? key, required this.camera}) : super(key: key);

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
        child: Column(children: [
          SizedBox(width: screenWidth * 1, height: screenHeight * 3),
          Container(
              width: screenWidth * 100,
              height: screenHeight * 6,
              child: Center(child: buildTopButtons())),
          SizedBox(width: screenWidth * 1, height: screenHeight * 3),
          Container(
            color: Colors.grey,
            child: SizedBox(
              width: screenWidth * 80,
              height: screenHeight * 55,
            ),
          ),
          SizedBox(height: screenHeight * 1),
          Container(
              width: screenWidth * 100,
              height: screenHeight * 25,
              child: buildBottomButtons(screenWidth, screenHeight)),
        ]),
      ),
    );
  }

  Row buildBottomButtons(double screenWidth, double screenHeight) {
    return Row(
      children: [
        SizedBox(width: screenWidth * 5),
        Expanded(
            flex: 5,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("ADJUSTMENTS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                CameraButton3(
                  width: screenWidth * 38,
                  height: screenHeight * 5.5,
                  textSize: 16,
                  onPressed: () {},
                  text: "GLITCH",
                ),
                SizedBox(height: screenHeight * 0.5),
                CameraButton3(
                  width: screenWidth * 38,
                  height: screenHeight * 5.5,
                  textSize: 16,
                  onPressed: () {},
                  text: "RGB",
                ),
                SizedBox(height: screenHeight * 0.5),
                CameraButton3(
                  width: screenWidth * 38,
                  height: screenHeight * 5.5,
                  textSize: 16,
                  onPressed: () {},
                  text: "CONTRAST",
                ),
              ],
            )),
        SizedBox(width: screenWidth * 1),
        Expanded(
          flex: 5,
          child: buildRightBottomButtons(screenWidth, screenHeight),
        )
      ],
    );
  }

  Column buildRightBottomButtons(double screenWidth, double screenHeight) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("ZOOM",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                CameraButtonS(
                  width: screenWidth * 16,
                  textSize: 40,
                  onPressed: () {},
                  text: "T",
                ),
                SizedBox(height: screenHeight * 2),
                CameraButtonS(
                  width: screenWidth * 16,
                  textSize: 40,
                  onPressed: () {},
                  text: "W",
                ),
              ],
            ),
            SizedBox(width: screenHeight * 3),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("RECORD",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                CameraButtonS(
                  width: screenWidth * 16,
                  textSize: 40,
                  onPressed: () {},
                  text: "REC",
                  color: Color.fromRGBO(234, 57, 46, 1),
                ),
                SizedBox(height: screenHeight * 2),
                CameraButtonS(
                  width: screenWidth * 16,
                  textSize: 40,
                  onPressed: () {},
                  text: "PLAY",
                )
              ],
            ),
          ],
        )
      ],
    );
  }

  Row buildTopButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CameraButton(
            textSize: SizeConfig.textScale, onPressed: () {}, text: "SELFIE"),
        CameraButton(
            textSize: SizeConfig.textScale, onPressed: () {}, text: "MY FILES"),
        CameraButton(
            textSize: SizeConfig.textScale, onPressed: () {}, text: "SETTINGS"),
        CameraButton(
            textSize: SizeConfig.textScale, onPressed: () {}, text: "LIGHT")
      ],
    );
  }
}
