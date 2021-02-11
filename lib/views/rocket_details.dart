import 'package:flutter/material.dart';
import 'package:space_x/widgets/space_x_appbar.dart';

class RocketDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: SpaceAppBar(
            title: '',
            trailing: Icon(
              Icons.share_rounded,
              color: Colors.white,
            ),
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(22).copyWith(
            top: 0,
            bottom: 48,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage('assets/images/crs.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              launchInfo(
                title: 'ROCKET',
                subTitle: 'Falcon 1',
              ),
              SizedBox(
                height: 22,
              ),
              launchInfo(
                title: 'LAUNCH DATE',
                subTitle: '01-03-2019',
              ),
              SizedBox(
                height: 22,
              ),
              launchInfo(
                title: 'LAUNCH SITE',
                subTitle: 'CCAFS SLC 40',
              ),
              SizedBox(
                height: 22,
              ),
              launchInfo(
                title: 'LAUNCH STATUS',
                subTitle: 'Success',
              ),
              SizedBox(
                height: 22,
              ),
              launchInfo(
                title: 'DETAILS',
                lineHeight: 1.3,
                subTitle:
                    'Last launch of the original Falcon 9 v1.0 launch vehicle',
              ),
              SizedBox(
                height: 22,
              ),
              launchInfo(
                title: 'ROCKET SUMMARY',
                subTitle: 'Falcon 9',
              ),
              SizedBox(
                height: 22,
              ),
              launchInfo(
                title: 'TYPE',
                subTitle: 'v1.0',
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  launchInfo(
                    title: 'FIRST STAGE',
                    subTitle: 'Cores: 4',
                  ),
                  launchInfo(
                    title: 'SECOND STAGE',
                    subTitle: 'Payloads: 150kg',
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  socialButtons(
                    color: Color(0xFFD21F06),
                    title: 'YOUTUBE',
                  ),
                  socialButtons(
                      color: Color(0xFFFF5B14),
                      title: 'REDDIT',
                      crossAxisAlignment: CrossAxisAlignment.end

                      // icon: Icons.
                      ),
                ],
              ),
              SizedBox(
                height: 27,
              ),
              Text(
                'SNEAK PEAK',
                style: TextStyle(
                  color: Color(0xFFFF003D),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 28,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          margin: EdgeInsets.only(
                            right: 14,
                          ),
                          width: MediaQuery.of(context).size.width * 0.75,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(6),
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/Rectangle 2.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column socialButtons({
    Color color = Colors.red,
    IconData icon = Icons.play_arrow,
    String title = '',
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
  }) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xFFFF003D),
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: title != 'REDDIT' ? 8 : 11,
          ),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(6)),
          width: 100,
          constraints: BoxConstraints(
            minHeight: 35,
          ),
          child: title != 'REDDIT'
              ? Icon(
                  icon,
                  color: Colors.white,
                )
              : Image.asset(
                  'assets/images/Vector.png',
                  height: 18,
                  width: 22,
                ),
        ),
      ],
    );
  }

  Widget launchInfo({
    @required String title,
    @required String subTitle,
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
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Text(
          subTitle,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 18,
            height: lineHeight,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
