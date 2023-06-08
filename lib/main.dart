import 'package:flutter/material.dart';

import 'app_scroll_behavior.dart';
import 'video_feed_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Video Feed',
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const VideoFeed(),
    );
  }
}
