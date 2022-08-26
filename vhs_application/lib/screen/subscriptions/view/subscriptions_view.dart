import 'package:flutter/material.dart';

import '../../../core/config/size_config.dart';

void main() {
  runApp(const SubscriptionView());
}

class SubscriptionView extends StatelessWidget {
  const SubscriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    double screenHeight = SizeConfig.blockSizeVertical!;
    double screenWidth = SizeConfig.blockSizeHorizontal!;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [buildBackText(), buildRestoreText()],
          ),
          buildSubscriptionText(),
          Container(
              height: screenHeight * 50, //for example
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  buildItem('assets/images/video_camera.png', "VHS CAMERA",
                      "Turn your iPhone into a VHS camera", screenWidth * 40),
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
                  Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: buildButton(
                          Color.fromARGB(255, 255, 58, 48),
                          "1 Year",
                          "79.99 USD / year",
                          screenHeight * 8,
                          screenWidth * 45,
                          Colors.white)),
                  buildButton(
                      Color.fromARGB(255, 45, 45, 47),
                      "1 Month",
                      "12.99 USD / month",
                      screenHeight * 8,
                      screenWidth * 45,
                      Color.fromARGB(255, 142, 142, 147)),
                ],
              )),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Subscriptions may be managed by the user and auto-renewal may be turned off by going to the user's Account Settings after purchase. The subscription automatically renews unless auto-renew is turned off at least 24-hours before the end of the current period.",
                style: TextStyle(
                    fontSize: 17,
                    color: Color.fromARGB(255, 156, 156, 156),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10) +
                  const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Your account will be charged for renewal for the amount of your current subscription within 24-hours prior to the end of the current period. All costs for subscriptions are mentioned above.",
                style: TextStyle(
                    fontSize: 17,
                    color: Color.fromARGB(255, 156, 156, 156),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10) +
                  const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Any unused portion of a free trial period, if offered, will be forfeited when the user purchases a subscription to that publication, where applicable. Payment will be charged to iTunes Account at confirmation of purchase.",
                style: TextStyle(
                    fontSize: 17,
                    color: Color.fromARGB(255, 156, 156, 156),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ]));
  }

  Padding buildButton(Color color, String text1, String text2, double height,
      double width, Color color2) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10) +
            const EdgeInsets.symmetric(vertical: 5),
        child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(3),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10) +
                            const EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text1,
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              text2,
                              style: TextStyle(
                                  fontSize: 24,
                                  color: color2,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.white,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
                onTap: () => {},
              ),
            )));
  }

  Padding buildItem(
      String path, String text, String description, double width) {
    return Padding(
      padding: const EdgeInsets.only(top: 18) + const EdgeInsets.only(left: 26),
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

  Padding buildRestoreText() {
    return Padding(
      padding:
          const EdgeInsets.only(top: 46) + const EdgeInsets.only(right: 16),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Text(
            "Restore",
            style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 156, 156, 156),
                fontWeight: FontWeight.w500),
          ),
          onTap: () => {},
        ),
      ),
    );
  }

  Align buildSubscriptionText() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 17) + const EdgeInsets.only(left: 16),
        child: Text(
          "Subscriptions",
          style: TextStyle(
              fontSize: 44, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Padding buildBackText() {
    return Padding(
        padding:
            const EdgeInsets.only(top: 46) + const EdgeInsets.only(left: 26),
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
            )));
  }
}
