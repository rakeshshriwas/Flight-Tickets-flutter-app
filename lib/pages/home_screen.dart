import 'package:flutter/material.dart';
import 'package:trading_app/pages/other_views/SiglePageScrollView.dart';
import '../common_widget/custome_appBar.dart';
import './home_topSection.dart';
import './home_middle_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CutomeBottomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              HomeScreenTopSection(),
              // SinglePageScrollView(),
              HomeScreenMiddleSection(),
            ],
          ),
        ),
      ),
    );
  }
}
