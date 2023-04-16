import 'package:flutter/material.dart';
import 'package:unoquide/constants/constants.dart';
import 'package:unoquide/utils/common/personalItem.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(color: backgroundColor),
      margin: const EdgeInsets.fromLTRB(0, 0, 80, 0),
      child: Column(
        children: [
          const SizedBox(
            height: 17,
          ),
          const Text(
            'Personal Information',
            style: TextStyle(
                color: blackColor,
                fontSize: 40,
                fontWeight: bold2,
                fontFamily: 'Raleway'),
          ),
          const SizedBox(
            height: 34,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: MediaQuery.of(context).size.width * .8,
              height: 2,
              color: blackColor,
            ),
          ),
          InkWell(
            onTap: () {},
            child: InfoItem(
              textHeading: 'NAME',
              textDesc: 'Arnavi S.',
            ),
          ),
          InfoItem(
            textHeading: 'Admission Number',
            textDesc: '3288',
          ),
          InfoItem(
            textHeading: 'D.O.B',
            textDesc: '10 January 2014',
          ),
          InfoItem(
            textHeading: 'FATHER\'S NAME',
            textDesc: 'Siddharth S.',
          ),
          InfoItem(
            textHeading: 'MOTHER\'S NAME',
            textDesc: 'Sneha S.',
          ),
          InfoItem(
            textHeading: 'BLOOD GROUP',
            textDesc: 'O+',
          ),
        ],
      ),
    );
  }
}
