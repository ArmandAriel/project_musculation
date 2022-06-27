// ignore_for_file: prefer_typing_uninitialized_variables, unused_field

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ExerciceScreen extends StatefulWidget {
  final _descriptionFull;
  final _title;
  final _image;
  final _linkVideo;

  const ExerciceScreen(this._title, this._descriptionFull, this._image, this._linkVideo, {Key? key}) : super(key: key);

  @override
  State<ExerciceScreen> createState() => _ExerciceScreenState();
}

class _ExerciceScreenState extends State<ExerciceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: Text(
              "Video",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: widget._linkVideo.toString(),
                flags: const YoutubePlayerFlags(
                  autoPlay: false,
                  mute: false,
                ),
              ),
              showVideoProgressIndicator: true,

              // videoProgressIndicatorColor: Colors.amber,
              // progressColors: ProgressColors(
              //     playedColor: Colors.amber,
              //     handleColor: Colors.amberAccent,
              // ),
              // onReady () {
              //     _controller.addListener(listener);
              // },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget._descriptionFull,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ]),
      ),
    );
  }
}
