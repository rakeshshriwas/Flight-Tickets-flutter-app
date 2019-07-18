import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:trading_app/common_widget/flight_detail_chip.dart';
import 'package:trading_app/main.dart';
import 'package:trading_app/pages/CustomShapeClipper.dart';
import 'package:trading_app/style/colors.dart';
import 'package:trading_app/style/text_style.dart';

class FlightListingScreen extends StatelessWidget {
  // Tops Section
  Widget _buildFlightListTopSection() {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomeShapeCliper(),
          child: Container(
            height: 160.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [firstColor, secondColor],
              ),
            ),
          ),
        ),
        _buildPrimaryCard(),
      ],
    );
  }

  // Primary Card
  Widget _buildPrimaryCard() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Card(
          elevation: 10.0,
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 22.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Boston (BOS)',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 20.0,
                      ),
                      Text(
                        'New York City (NYC)',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.import_export,
                    color: Colors.black,
                    size: 32.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  // Flight list

  Widget _buildFlightListContent() {
    return Container(
      padding: EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Best Deals for Next 6 Months",
              style: dropDownMenuItemStyle,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          _buildFlightCard(),
          _buildFlightCard(),
          _buildFlightCard(),
          _buildFlightCard(),
          _buildFlightCard(),
          _buildFlightCard(),
          _buildFlightCard(),
        ],
      ),
    );
  }

  // Flight Card

  Widget _buildFlightCard() {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 16.0, bottom: 16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            border: Border.all(
              color: flightBgColor,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '4159',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      '(4159)',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
                Wrap(
                  spacing: 8.0,
                  children: <Widget>[
                    FlightDetailChip(Icons.calendar_today, 'Jun 2019'),
                    FlightDetailChip(Icons.flight_takeoff, 'Jet Airways'),
                    FlightDetailChip(Icons.star, '4.4'),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10.0,
          right: 0.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
            decoration: BoxDecoration(
              color: discountBgColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Text(
              '50%',
              style: TextStyle(
                  color: appTheme.primaryColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Result"),
        centerTitle: true,
        elevation: 0.0,
        leading: InkWell(
            child: Icon(Icons.arrow_back),
            onTap: () {
              Navigator.pop(context);
            }),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildFlightListTopSection(),
              SizedBox(height: 20),
              _buildFlightListContent(),
            ],
          ),
        ),
      ),
    );
  }
}
