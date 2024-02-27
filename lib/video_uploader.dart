import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key, required String videoUrl})
      : super(key: key);

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Firebase Storage'dan video URL'sini al
    String videoUrl =
        'https://firebasestorage.googleapis.com/v0/b/tobeto-pair-1.appspot.com/o/Mobile-app-showcase-%5Bremix%5D.mp4?alt=media&token=0c24e079-565d-484d-8c2d-d9a298bd31a4';

    // VideoPlayerController'ı oluştur ve URL'yi atayarak başlat
    _controller = VideoPlayerController.network(videoUrl);

    // VideoPlayerController'ı başlatmak için Future'ı sakla
    _initializeVideoPlayerFuture = _controller.initialize();

    // Videonun sürekli oynatılmasını ayarla
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // VideoPlayerController'ı temizle
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Storage Video'),
      ),
      // VideoPlayerController'ın başlatılmasını bekleyen FutureBuilder
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // VideoPlayerController başlatıldıktan sonra, AspectRatio kullanarak aspect ratio'yu koru
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              // Video'yu oynatmak için VideoPlayer widget'ını kullan
              child: VideoPlayer(_controller),
            );
          } else {
            // VideoPlayerController başlatılırken yüklenme işareti göster
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Play/Pause işlemlerini setState içinde yaparak güncel bir durum sağla
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        // Oynatma durumuna göre uygun ikonu göster
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
