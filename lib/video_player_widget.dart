// Stateful widget to fetch and then display video content.
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key, required this.videoURL});
  final String videoURL;

  @override
  VideoPlayerWidgetState createState() => VideoPlayerWidgetState();
}

class VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoURL)
      ..initialize().then((_) {
        setState(() {});
      })
      ..setVolume(1)
      ..play()
      ..setLooping(true);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          },
          child: SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
