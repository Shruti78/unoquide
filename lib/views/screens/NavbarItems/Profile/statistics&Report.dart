import 'package:flutter/material.dart';
import 'package:unoquide/constants/constants.dart';
import 'package:unoquide/views/screens/NavbarItems/Profile/statistics.dart';

import '../../../../utils/common/commonItems.dart';

class StatisticsReports extends StatefulWidget {
  const StatisticsReports({Key? key}) : super(key: key);

  @override
  State<StatisticsReports> createState() => _StatisticsReportsState();
}

class _StatisticsReportsState extends State<StatisticsReports> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ImageTextClickableContainer(
            width: width * .3,
            height: height * .4,
            imgUrl: "assets/Images/Stats/report.png",
            text: "Statistics",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Statistics()));
            }),
        ImageTextClickableContainer(
            width: width * .3,
            height: height * .4,
            imgUrl: "assets/Images/Stats/draw.png",
            text: "Report Card",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Column(
                            children: const [
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "Report Card",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: bold3,
                                    color: blackColor,
                                    fontFamily: 'Raleway'),
                              ),
                            ],
                          )));
            }),
      ],
    );
  }
}
