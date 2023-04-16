import 'package:flutter/material.dart';
import 'package:unoquide/constants/constants.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 20,
        ),
        Text(
          'Notifications',
          style: TextStyle(
              color: blackColor,
              fontSize: 40,
              fontWeight: bold3,
              fontFamily: 'Raleway'),
        ),
        SizedBox(
          height: 34,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text("\t\t\t\u2022 You have a new message\n",
              style: TextStyle(
                  color: blackColor,
                  fontSize: 20,
                  fontWeight: bold,
                  fontFamily: 'Raleway')),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text("\t\t\t\u2022 You have a new message\n",
              style: TextStyle(
                  color: blackColor,
                  fontSize: 20,
                  fontWeight: bold,
                  fontFamily: 'Raleway')),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text("\t\t\t\u2022 You have a new message\n",
              style: TextStyle(
                  color: blackColor,
                  fontSize: 20,
                  fontWeight: bold,
                  fontFamily: 'Raleway')),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text("\t\t\t\u2022 You have a new message\n",
              style: TextStyle(
                  color: blackColor,
                  fontSize: 20,
                  fontWeight: bold,
                  fontFamily: 'Raleway')),
        ),
      ],
    );
  }
}
