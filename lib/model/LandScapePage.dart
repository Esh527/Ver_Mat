import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player/video_player.dart';

class LandScapePlayerPages extends StatefulWidget {
  const LandScapePlayerPages({Key? key, required this.controller});

  final VideoPlayerController controller;

  @override
  State<LandScapePlayerPages> createState() => _LandScapePlayerPagesState();
}

class _LandScapePlayerPagesState extends State<LandScapePlayerPages> {
  Future _landscapeMode() async {
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  }

  Future _setAllOrientation() async {
    await SystemChrome.setPreferredOrientations(DeviceOrientation.values);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _landscapeMode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _setAllOrientation();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => VideoPlayer(widget.controller);
}
