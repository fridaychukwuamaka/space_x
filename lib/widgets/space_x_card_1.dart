import 'package:flutter/material.dart';

class SpaceXCard1 extends StatelessWidget {
  const SpaceXCard1({
    Key key,
    @required this.name,
    @required this.code,
    @required this.date,
    @required this.image,
  }) : super(key: key);

  final String name;
  final String code;
  final String date;
  final String image;

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LAUNCH',
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
                height: 9,
              ),
              Text(
                code,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.56),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                date,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.56),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
