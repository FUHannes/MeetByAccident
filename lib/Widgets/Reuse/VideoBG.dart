import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class VideoBG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: make this real video
    return Container(
      color: Theme.of(context).canvasColor,
      child: CameraApp(),
    );
  }
}

List<CameraDescription> cameras;

class CameraApp extends StatefulWidget {
  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    
    availableCameras().then((cams) {
      cameras=cams;
      controller = CameraController(cameras[1], ResolutionPreset.medium);
      controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
    });
    
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    final size = MediaQuery.of(context).size;
    final deviceRatio = size.width / size.height;
    return Transform.scale(
      scale: controller.value.aspectRatio / deviceRatio,
      child: Center(
        child: AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: CameraPreview(controller),
        ),
      ),
    );
  }
}