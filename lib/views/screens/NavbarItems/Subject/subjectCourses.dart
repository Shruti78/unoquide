import 'package:flutter/material.dart';
import 'package:unoquide/utils/common/commonItems.dart';
import 'package:unoquide/views/screens/NavbarItems/AudioVideo/recorded.dart';


import 'package:unoquide/views/screens/NavbarItems/AudioVideo/visuals.dart';
import 'package:unoquide/views/screens/NavbarItems/Subject/subjectResource.dart';

class SubjectCourses extends StatefulWidget {
  SubjectCourses({Key? key, required this.screenIndex}) : super(key: key);
  int screenIndex = 0;
  @override
  State<SubjectCourses> createState() => _SubjectCoursesState(screenIndex);
}

//
class _SubjectCoursesState extends State<SubjectCourses> {
  int screenIndex;
  _SubjectCoursesState(this.screenIndex);
  Function onTap = (String subjectName, BuildContext context, int index) {
    if (index == 0) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Test(
                subjectName: subjectName,
              )));
    } else if (index == 1) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Visuals(
                subjectName: subjectName,
              )));
    } else {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Recorded()));
    }
  };

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageTextClickableContainer(
                width: width * .3,
                height: height * .4,
                imgUrl: 'assets/Images/Courses/english.png',
                text: "English",
                onTap: () {
                  onTap("English", context, screenIndex);
                }),
            ImageTextClickableContainer(
                width: width * .3,
                height: height * .4,
                imgUrl: 'assets/Images/Courses/hindi.png',
                text: "Hindi",
                onTap: () {
                  onTap("Hindi", context, screenIndex);
                }),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageTextClickableContainer(
                width: width * .3,
                height: height * .4,
                imgUrl: 'assets/Images/Courses/maths.png',
                text: "Maths",
                onTap: () {
                  onTap("Maths", context, screenIndex);
                }),
            ImageTextClickableContainer(
                width: width * .3,
                height: height * .4,
                imgUrl: 'assets/Images/Courses/evs.png',
                text: "Environmental\nStudies",
                onTap: () {
                  onTap("Environmental Studies", context, screenIndex);
                }),
          ],
        ),
      ]),
    );
  }
}
