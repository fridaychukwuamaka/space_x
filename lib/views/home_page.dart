import 'package:flutter/material.dart';
import 'package:space_x/views/launches_tab.dart';
import 'package:space_x/views/rockets_tab.dart';
import 'package:space_x/views/upcoming_tab.dart';
import 'package:space_x/widgets/space_x_appbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 2, vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: SpaceAppBar(
            title: 'SpaceX',
          ),
          preferredSize: Size.fromHeight(100),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 38).copyWith(bottom: 0),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: Column(
            children: [
              TabBar(
                labelColor: Color(0xFFFF003D),
                unselectedLabelColor: Colors.black.withOpacity(0.59),
                indicatorWeight: 4,
                // indicator:Tabindi,
                indicatorColor: Color(0xFFFF003D),
                indicatorSize: TabBarIndicatorSize.label,
                // labelPadding: EdgeInsets.zero,
                labelPadding: EdgeInsets.only(bottom: 0),

                labelStyle: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Google-sans',
                  fontWeight: FontWeight.w500,
                ),
                indicatorPadding: EdgeInsets.only(top: 0),
                unselectedLabelStyle: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Google-sans',
                  fontWeight: FontWeight.w500,
                ),
                controller: _tabController,
                tabs: [
                  Tab(
                    text: 'Upcoming',
                  ),
                  Tab(
                    text: 'Launches',
                  ),
                  Tab(
                    text: 'Rockets',
                  ),
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    UpcomingTab(),
                    LaunchesTab(),
                    RocketsTab(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
