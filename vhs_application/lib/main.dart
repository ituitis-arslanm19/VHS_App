import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:vhs_application/core/widgets/buttons/camera_buttonS.dart';
import 'package:vhs_application/screen/home/view/home_view.dart';
import 'package:vhs_application/screen/tutorial/view/tutorial_view_2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;
  runApp(MyApp(camera: firstCamera));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;

  const MyApp({super.key, required this.camera});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Alpharush'),
      title: 'Material App',
      home: Scaffold(
        body: SafeArea(child: TutorialView2()),
      ),
    );
  }
}
