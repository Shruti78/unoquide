import 'package:flutter/material.dart';
import 'package:unoquide/utils/common/commonItems.dart';
import 'package:unoquide/views/screens/NavbarItems/Profile/personalInfo.dart';
import 'package:unoquide/views/screens/NavbarItems/Profile/statistics&Report.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ImageTextClickableContainer(
              width: width * .3,
              height: height * .4,
              imgUrl: "assets/Images/Stats/personal.png",
              text: "Personal Info",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PersonalInfo()),
                );
              }),
          ImageTextClickableContainer(
              width: width * .3,
              height: height * .4,
              imgUrl: "assets/Images/Stats/subject.png",
              text: "Subject Info",
              onTap: () {}),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ImageTextClickableContainer(
              width: width * .3,
              height: height * .4,
              imgUrl: "assets/Images/Stats/documents.png",
              text: "My Documents",
              onTap: () {}),
          ImageTextClickableContainer(
              width: width * .3,
              height: height * .4,
              imgUrl: "assets/Images/Stats/report.png",
              text: "Statistics &\nReport Card",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StatisticsReports()),
                );
              }),
        ]),
      ],
    );
  }
}
