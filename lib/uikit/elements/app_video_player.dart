import 'package:flutter/material.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';
import 'package:video_player/video_player.dart';

class AppVideoPlayer extends StatefulWidget {
  const AppVideoPlayer({
    super.key,
    required this.url,
    this.aspectRatio = 16 / 9,
  });

  final String url;
  final double aspectRatio;

  @override
  State<AppVideoPlayer> createState() => _AppVideoPlayerState();
}

class _AppVideoPlayerState extends State<AppVideoPlayer> {
  late final _controller = VideoPlayerController.networkUrl(
    Uri.parse(widget.url),
    formatHint: VideoFormat.ss,
    videoPlayerOptions: VideoPlayerOptions(
      allowBackgroundPlayback: true,
      webOptions: VideoPlayerWebOptions(
        controls: VideoPlayerWebOptionsControls.enabled(
          allowDownload: true,
          allowFullscreen: true,
          allowPictureInPicture: true,
          allowPlaybackRate: true,
        ),
      ),
    ),
  )
    ..initialize().then((_) => setState(() {}))
    ..addListener(() => setState(() {}));

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: _controller.value.isInitialized ? _controller.value.aspectRatio : widget.aspectRatio,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          color: context.customColorScheme.videoBackgroundColor,
          child: Stack(
            children: [
              if (_controller.value.isInitialized) VideoPlayer(_controller),
              if (_controller.value.isInitialized)
                Responsive.get(
                  context,
                  def: () => Center(
                    child: _controller.value.isPlaying
                        ? Assets.icons.icPause.svg(height: 70, width: 70)
                        : Assets.icons.icPlay.svg(height: 70, width: 70),
                  ),
                  s: () => SizedBox.shrink(),
                )
              else
                Center(child: CircularProgressIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}
