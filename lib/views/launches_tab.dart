import 'package:flutter/material.dart';
import 'package:space_x/widgets/space_x_card_1.dart';

class LaunchesTab extends StatefulWidget {
  @override
  _LaunchesTabState createState() => _LaunchesTabState();
}

class _LaunchesTabState extends State<LaunchesTab> {
  List<Launches> launches = [
    Launches(
      image: 'assets/images/falconsat01-1.png',
      name: 'Starlink 2',
      code: 'CCAES SLC 40',
      date: '16-12-2014',
    ),
    Launches(
      image: 'assets/images/falcon9.png',
      name: 'DemoSat',
      code: 'AAAES SLC 40',
      date: '06-07-2018',
    ),
    Launches(
      image: 'assets/images/demosat02-1.png',
      name: 'Falcon 9 Test',
      code: 'CCAES SEC 40',
      date: '18-03-2019',
    ),
    Launches(
      image: 'assets/images/crs.png',
      name: 'CRS - 2',
      code: 'CAAES SLC 40',
      date: '18-12-2019',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 23).copyWith(bottom: 70),
      itemCount: launches.length,
      itemBuilder: (context, index) {
        Launches item = launches[index];
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
          ),
          child: SpaceXCard1(
            name: item.name,
            image: item.image,
            code: item.code,
            date: item.date,
          ),
        );
      },
    );
  }
}

class Launches {
  const Launches({
    @required this.name,
    @required this.code,
    @required this.date,
    @required this.image,
  });

  final String name;
  final String code;
  final String image;
  final String date;
}
