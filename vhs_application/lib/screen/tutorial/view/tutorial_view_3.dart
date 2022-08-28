import 'package:flutter/material.dart';
import 'package:vhs_application/core/config/size_config.dart';
import 'package:vhs_application/core/widgets/cards/selection_card.dart';

void main() {
  runApp(const TutorialView3());
}

class TutorialView3 extends StatelessWidget {
  const TutorialView3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    double screenHeight = SizeConfig.blockSizeVertical!;
    double screenWidth = SizeConfig.blockSizeHorizontal!;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20) +
                  const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.close,
                        color: Color.fromARGB(255, 156, 156, 156),
                        size: 24.0,
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Restore",
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 156, 156, 156),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Center(child: Image.asset('assets/images/logo.png')),
            ),
            buildText(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                  height: screenHeight * 35, //for example
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      buildItem(
                          'assets/images/video_camera.png',
                          "VHS CAMERA",
                          "Turn your iPhone into a VHS camera",
                          screenWidth * 40),
                      buildItem(
                          'assets/images/glitch.png',
                          'GLITCH FILTERS',
                          "Record videos with VHS camcorder effects",
                          screenWidth * 45),
                      buildItem(
                          'assets/images/infinity.png',
                          'NO ADS & LIMTS',
                          "Get full access without restrictions and ads",
                          screenWidth * 45),
                    ],
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            SelectionCard(),
            SizedBox(
              height: 15,
            ),
            buildRedButton(screenHeight, screenWidth),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90) +
                  const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Terms of Usage",
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 156, 156, 156),
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    color: Color.fromARGB(255, 156, 156, 156),
                    height: 20,
                    width: 1,
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 156, 156, 156),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  Container buildRedButton(double screenHeight, double screenWidth) {
    return Container(
      height: screenHeight * 7,
      width: screenWidth * 95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3), color: Colors.red),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Continue",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
          onTap: () => {},
        ),
      ),
    );
  }

  Padding buildButton(String text1, String text2, String text3) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    text1,
                    style: TextStyle(
                        fontSize: 21,
                        color: Color.fromARGB(255, 156, 156, 156),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    text2,
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 156, 156, 156),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey,
              width: 1,
              height: 28,
            ),
            Text(
              text3,
              style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 156, 156, 156),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildItem(
      String path, String text, String description, double width) {
    return Padding(
      padding: const EdgeInsets.only(top: 18) + const EdgeInsets.only(left: 90),
      child: Row(
        children: [
          Image.asset(path),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  width: width,
                  child: Text(
                    description,
                    style: TextStyle(
                        fontSize: 21,
                        color: Color.fromARGB(255, 156, 156, 156),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Align buildText() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 7) + const EdgeInsets.only(left: 16),
        child: Center(
          child: Container(
            width: 250,
            child: Text(
              "Unlimited Access To All Features",
              style: TextStyle(
                  fontSize: 42,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
