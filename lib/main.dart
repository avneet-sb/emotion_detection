import 'package:camera/camera.dart';
import 'package:emotion_detection/home.dart';
import 'package:flutter/material.dart';

List<CameraDescription>? cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Emotion Detection App",
      theme: ThemeData(primaryColor: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
