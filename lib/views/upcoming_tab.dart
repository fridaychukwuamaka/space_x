import 'package:flutter/material.dart';
import 'package:space_x/widgets/space_x_card_1.dart';

class UpcomingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(23).copyWith(bottom: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SpaceXCard1(
            name: 'Starlink 2',
            code: 'CCAES SLC 40',
            date: '16-12-2014',
            image: 'assets/images/crs.png',
          ),
          SizedBox(
            height: 58,
          ),
          launchInfo(
            title: 'LAUNCH DATE',
            subTitle: 'Thu Oct 17 5:30:00 2019',
          ),
          SizedBox(
            height: 16,
          ),
          launchInfo(
            title: 'LAUNCH SITE',
            lineHeight: 1.6,
            spacing: 2,
            subTitle:
                'Cape Canaveral Air Force Station Space Launch Complex 40',
          ),
          SizedBox(
            height: 16,
          ),
          launchInfo(
            title: 'COUNT DOWN',
            subTitle: '5 Hrs 30mins more...',
          ),
        ],
      ),
    );
  }

  Widget launchInfo({
    @required String title,
    @required String subTitle,
    double spacing = 11,
    double lineHeight = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xFFFF003D),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: spacing,
        ),
        Text(
          subTitle,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 16,
            height: lineHeight,
          ),
        ),
      ],
    );
  }
}
