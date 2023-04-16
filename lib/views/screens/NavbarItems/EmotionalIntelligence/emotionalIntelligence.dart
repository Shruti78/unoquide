import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:unoquide/utils/common/commonItems.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../../../constants/constants.dart';

class EmotionalIntelligence extends StatefulWidget {
  const EmotionalIntelligence({Key? key}) : super(key: key);

  @override
  State<EmotionalIntelligence> createState() => _EmotionalIntelligenceState();
}

class _EmotionalIntelligenceState extends State<EmotionalIntelligence> {
  Function onTap = (BuildContext context, String videoId, String title) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PDFIframe(
              videoID: videoId,
              pdfUrl: title,
            )));
  };

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(
          height: 5,
        ),
        RichText(
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Emotional ',
                  style: TextStyle(
                      color: primaryBlue,
                      fontSize: 40,
                      fontWeight: bold,
                      fontFamily: 'Raleway')),
              TextSpan(
                  text: 'Intelligence',
                  style: TextStyle(
                      color: redAccent,
                      fontSize: 40,
                      fontWeight: bold,
                      fontFamily: 'Raleway')),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: width * .65,
          height: height * .1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xFFD9D9D9),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 4,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'Schedule a Counselling Session ',
              style: TextStyle(
                  color: blackColor,
                  fontSize: 25,
                  fontWeight: bold,
                  fontFamily: 'Raleway'),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageTextClickableContainer(
                width: width * .3,
                height: height * .4,
                imgUrl: 'assets/Images/EmotionalIntelligence/stress 1.png',
                text: "Stress\nManagement",
                onTap: () {
                  onTap(
                    context,
                    'mtRrxNTnyh8',
                    'http://ug.uno-guide.com/static/media/Stress.0bd0ad1647a7b50f7a24.pdf',
                  );
                }),
            ImageTextClickableContainer(
                width: width * .3,
                height: height * .4,
                imgUrl: 'assets/Images/EmotionalIntelligence/Motivation.png',
                text: "Motivation",
                onTap: () {
                  onTap(
                    context,
                    'domCDwp5u3I',
                    'http://ug.uno-guide.com/static/media/Motivation.b95399ae27926f172e24.pdf',
                  );
                }),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageTextClickableContainer(
                width: width * .3,
                height: height * .4,
                imgUrl: 'assets/Images/EmotionalIntelligence/Rectangle 24.png',
                text: "Empathy",
                onTap: () {
                  onTap(
                    context,
                    '5ZF9DWBqNQU',
                    'http://ug.uno-guide.com/static/media/Empathy.da0d6d2a265770c07589.pdf',
                  );
                }),
            ImageTextClickableContainer(
                width: width * .3,
                height: height * .4,
                imgUrl:
                    'assets/Images/EmotionalIntelligence/self awareness 1.png',
                text: "Self\nAwareness",
                onTap: () {
                  onTap(context, 'HIhEMk7CZ-A',
                      'http://ug.uno-guide.com/static/media/SelfAwareness.601750fa3bf185f62565.pdf');
                }),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageTextClickableContainer(
                width: width * .3,
                height: height * .4,
                imgUrl: 'assets/Images/EmotionalIntelligence/Rectangle 27.png',
                text: "Hope",
                onTap: () {
                  onTap(
                    context,
                    '1P3ZgLOy-w8',
                    'http://ug.uno-guide.com/static/media/Hope.38281905f83cdc161fe3.pdf',
                  );
                }),
            ImageTextClickableContainer(
                width: width * .3,
                height: height * .4,
                imgUrl: 'assets/Images/EmotionalIntelligence/compassion 1.png',
                text: "Compassion",
                onTap: () {
                  onTap(context, '38y_1EWIE9I',
                      'http://ug.uno-guide.com/static/media/Compassion.4990cda0a78e31e80aea.pdf');
                }),
          ],
        ),
      ]),
    );
  }
}

class PDFIframe extends StatelessWidget {
  PDFIframe({Key? key, required this.videoID, required this.pdfUrl})
      : super(key: key);
  final String videoID;
  final String pdfUrl;
  final Completer<PDFViewController> _pdfViewController =
      Completer<PDFViewController>();
  final StreamController<String> _pageCountController =
      StreamController<String>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * .4,
            child: PDF(
                enableSwipe: true,
                swipeHorizontal: true,
                autoSpacing: true,
                pageFling: true,
                nightMode: false,
                onPageChanged: (int? current, int? total) =>
                    _pageCountController.add('${current! + 1} - $total'),
                onViewCreated: (PDFViewController pdfViewController) async {
                  _pdfViewController.complete(pdfViewController);
                  final int currentPage =
                      await pdfViewController.getCurrentPage() ?? 0;
                  final int? pageCount = await pdfViewController.getPageCount();
                  _pageCountController.add('${currentPage + 1} - $pageCount');
                }).cachedFromUrl(
              pdfUrl,
              placeholder: (progress) => Center(
                child: CircularProgressIndicator(
                  value: progress,
                ),
              ),
              errorWidget: (dynamic error) =>
                  Center(child: Text(error.toString())),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * .4,
            child: YoutubePlayer(
              controller: YoutubePlayerController.fromVideoId(
                videoId: videoID,
                params: const YoutubePlayerParams(
                  mute: false,
                  loop: true,
                  showControls: true,
                  showFullscreenButton: true,
                ),
              ),
              aspectRatio: 16 / 9,
            ),
          ),
        ],
      ),
    );
  }
}
