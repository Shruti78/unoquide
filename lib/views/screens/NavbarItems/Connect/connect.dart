import 'package:flutter/material.dart';
import 'package:unoquide/views/screens/NavbarItems/Connect/VideoConference/videoConference.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../services/getsubject.dart';
import '../../../../utils/common/commonItems.dart';

class Connect extends StatefulWidget {
  const Connect({Key? key}) : super(key: key);

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  final imgUrlList = [
    'assets/Images/Connect/videocon.png',
    'assets/Images/Connect/messenger.png',
    'assets/Images/Connect/examination.png'
  ];
  _launchURLApp(URL) async {
    Uri url = Uri.parse(URL);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageTextClickableContainer(
              width: width * .3,
              height: height * .4,
              imgUrl: 'assets/Images/Connect/videocon.png',
              text: "Video Conferencing",
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => VideoConferencingScreen(),
                //   ),
                //   );
              },
            ),
            ImageTextClickableContainer(
              width: width * .3,
              height: height * .4,
              imgUrl: 'assets/Images/Connect/messenger.png',
              text: "Messenger",
              onTap: () {
                getSubject();
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageTextClickableContainer(
              width: width * .3,
              height: height * .4,
              imgUrl: 'assets/Images/Connect/examination.png',
              text: "Examination",
              onTap: () {
                launchUrl(Uri.parse("https://assessment.eklavvya.com/"),
                    mode: LaunchMode.externalApplication);
              },
            ),
            SizedBox(
              width: width * .3,
              height: height * .4,
            ),
          ],
        ),
      ],
    );
  }
}
