import 'package:flutter/material.dart';
import 'package:vhs_application/core/widgets/buttons/camera_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Alpharush'),
      title: 'Material App',
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/vhs_background.jpg"),
                    fit: BoxFit.cover)),
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: CameraButton(
                  text: "SELFIE",
                  textSize: 16,
                  width: 76,
                  height: 44,
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
