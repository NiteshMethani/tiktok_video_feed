import 'package:flutter/material.dart';

import 'video_player_widget.dart';

class VideoFeed extends StatelessWidget {
  const VideoFeed({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> videos = [
      "https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6856769842385620229_alex.mp4?alt=media&token=b70d853b-760a-45ee-b5d3-44cef7e4db7f",
      "https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6745671851688692998_tiktok.mp4?alt=media&token=e6c76be2-9d8e-4be6-aedc-89ddd4985871",
      "https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6842407707551599878_carlos-barrios%20(1).mp4?alt=media&token=965f5080-2771-4477-bd9d-defc7b581c5d",
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    ];
    return Scaffold(
      body: SizedBox.expand(
        child: PageView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: videos.length,
          itemBuilder: ((context, index) => VideoPlayerWidget(
                videoURL: videos[index],
              )),
        ),
      ),
    );
  }
}
