import 'package:flutter/material.dart';
import 'package:unoquide/utils/common/commonItems.dart';

import '../../../../constants/constants.dart';

class Test extends StatefulWidget {
  const Test({Key? key, required this.subjectName}) : super(key: key);
  final String subjectName;

  @override
  State<Test> createState() => _TestState(subjectName);
}

class _TestState extends State<Test> {
  String? subjectName;
  _TestState(this.subjectName);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          subjectName!,
          style: const TextStyle(
              color: blackColor,
              fontSize: 40,
              fontWeight: bold,
              fontFamily: 'Raleway'),
        ),
        const SubjectText(subjectData: 'Notes'),
        const SubjectText(subjectData: 'Q&As'),
        const SubjectText(subjectData: 'Activities'),
        const SubjectText(subjectData: 'Game'),
        const SubjectText(subjectData: 'Recorded Lectures'),
        const SubjectText(subjectData: 'Animated Videos'),
      ],
    );
  }
}
