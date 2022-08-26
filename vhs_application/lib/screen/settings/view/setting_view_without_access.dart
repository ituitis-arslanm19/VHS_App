import 'package:flutter/material.dart';
import 'package:vhs_application/core/config/size_config.dart';

void main() {
  runApp(const SettingsViewWithoutAccess());
}

class SettingsViewWithoutAccess extends StatelessWidget {
  const SettingsViewWithoutAccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    double screenWidth = SizeConfig.blockSizeHorizontal!;
    double screenHeight = SizeConfig.blockSizeVertical!;
    return Scaffold(
        backgroundColor: Colors.black,
        body: OrientationBuilder(builder: (context, orientation) {
          return Column(
            children: [
              buildBackText(),
              buildSettingsText(),
              buildPremiumText(),
              Container(
                  height: screenHeight * 10, //for example
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      buildLicenseItem(screenHeight * 5),
                      buildRecordinsItem(screenHeight * 5)
                    ],
                  )),
              buildGeneralText(),
              Container(
                  height: screenHeight * 25, //for example
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      buildItem(Icons.refresh, () => {}, "Subscription",
                          screenHeight * 5),
                      buildItem(Icons.chat_bubble_outline_rounded, () => null,
                          "Contact support", screenHeight * 5),
                      buildItem(Icons.share, () => null, "Share our app",
                          screenHeight * 5),
                      buildItem(Icons.description_outlined, () => {},
                          "Privacy Policy", screenHeight * 5),
                      buildItem(Icons.description_outlined, () => null,
                          "Terms of usage", screenHeight * 5)
                    ],
                  )),
            ],
          );
        }));
  }

  Align buildGeneralText() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 16) +
            const EdgeInsets.only(top: 26) +
            const EdgeInsets.only(bottom: 10),
        child: Text(
          "GENERAL",
          style: TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 156, 156, 156),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Container buildUnlimitedItem(double screenHeight) {
    return Container(
        height: screenHeight,
        color: Color.fromRGBO(28, 28, 30, 1),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.library_music_outlined,
                            color: Colors.red,
                            size: 24.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Unlimited access to all features',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.white,
                        size: 24.0,
                      ),
                    ],
                  ),
                  onTap: () => {},
                ))));
  }

  Container buildRecordinsItem(double screenHeight) {
    return Container(
        height: screenHeight,
        color: Color.fromRGBO(28, 28, 30, 1),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Material(
              color: Colors.transparent,
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.history,
                          color: Colors.red,
                          size: 24.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Recordings remaining',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '5 of 5',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 156, 156, 156),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                onTap: () => {},
              )),
        ));
  }

  Container buildItem(final IconData icon, final Function()? onPressed,
      final String text, double screenHeight) {
    return Container(
        height: screenHeight,
        color: Color.fromRGBO(28, 28, 30, 1),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        icon,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          text,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.navigate_next_rounded,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ],
              ),
              onTap: onPressed,
            ),
          ),
        ));
  }

  Container buildLicenseItem(double screenHeight) {
    return Container(
        height: screenHeight,
        color: Color.fromRGBO(28, 28, 30, 1),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.account_circle_rounded,
                        color: Colors.red,
                        size: 24.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'License',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Free',
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 156, 156, 156),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              onTap: () => {},
            ),
          ),
        ));
  }

  Align buildPremiumText() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 16) +
            const EdgeInsets.only(top: 26) +
            const EdgeInsets.only(bottom: 10),
        child: Text(
          "PREMIUM",
          style: TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 156, 156, 156),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Align buildSettingsText() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 17) + const EdgeInsets.only(left: 16),
        child: Text(
          "SETTINGS",
          style: TextStyle(
              fontSize: 44, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Align buildBackText() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 46) + const EdgeInsets.only(left: 26),
        child: Text(
          "BACK",
          style: TextStyle(
              fontSize: 28,
              color: Color.fromRGBO(255, 59, 48, 1),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
