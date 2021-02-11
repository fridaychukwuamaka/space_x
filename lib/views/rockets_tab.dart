import 'package:flutter/material.dart';
import 'package:space_x/views/rocket_details.dart';

class RocketsTab extends StatefulWidget {
  @override
  _RocketsTabState createState() => _RocketsTabState();
}

class _RocketsTabState extends State<RocketsTab> {
  List<Rockets> rockets = [
    Rockets(
      name: 'Falcon 1',
      image: 'assets/images/falconsat01-1.png',
      status: SpaceXRocketsStatus.inactive,
    ),
    Rockets(
      name: 'Falcon 9',
      image: 'assets/images/falcon09.png',
      status: SpaceXRocketsStatus.active,
    ),
    Rockets(
      name: 'Big Falcon Rocket',
      image: 'assets/images/demosat02-1.png',
      status: SpaceXRocketsStatus.inactive,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 23).copyWith(bottom: 70),
      itemCount: rockets.length,
      itemBuilder: (context, index) {
        Rockets item = rockets[index];
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => RocketDetails(),
                ),
              );
            },
            child: SpaceXCard2(
              name: item.name,
              image: item.image,
              status: item.status,
            ),
          ),
        );
      },
    );
  }
}

String inactive = 'INACTIVE';
String active = 'ACTIVE';

enum SpaceXRocketsStatus { inactive, active }

class SpaceXCard2 extends StatelessWidget {
  const SpaceXCard2({
    this.name,
    this.status,
    this.image,
  });
  final String name;
  final String image;
  final SpaceXRocketsStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 4,
              offset: Offset(0, 4))
        ],
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 85,
            width: 85,
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ROCKET',
                  style: TextStyle(
                    color: Color(0xFFFF003D),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    // height: 1.3,
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 17,
                  ),
                  // width: 70,
                  constraints: BoxConstraints(
                    minWidth: 80,
                  ),
                  decoration: BoxDecoration(
                      color: status == SpaceXRocketsStatus.active
                          ? Color(0xFF16BE27)
                          : Color(0xFFFF0000),
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    status == SpaceXRocketsStatus.active
                        ? 'INACTIVE'
                        : 'ACTIVE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Rockets {
  const Rockets({
    @required this.name,
    @required this.image,
    @required this.status,
  });

  final String name;
  final String image;
  final SpaceXRocketsStatus status;
}
