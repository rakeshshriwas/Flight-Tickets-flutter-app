import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trading_app/main.dart';
import 'package:trading_app/pages/flight_list.dart';
// Custome widget
import '../style/colors.dart';
import '../style/text_style.dart';
import './CustomShapeClipper.dart';
import '../common_widget/choice_chip.dart';

// Home Screen Top Section
class HomeScreenTopSection extends StatefulWidget {
  @override
  _HomeScreenTopSectionState createState() => _HomeScreenTopSectionState();
}

var selectedLocationIndex = 0;

class _HomeScreenTopSectionState extends State<HomeScreenTopSection> {
  final List<String> locations = ['Boston (BOS)', 'New York City (NYC)'];
  bool isFlightSelected = true;

  // Popup Menu Button
  Widget _buildPopupMenuButton() {
    return PopupMenuButton(
      onSelected: (index) {
        setState(() {
          selectedLocationIndex = index;
        });
      },
      child: Row(
        children: <Widget>[
          Text(
            locations[selectedLocationIndex],
            style: defaultTextLabelStyle,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: whiteColor,
          )
        ],
      ),
      itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
            PopupMenuItem(
              child: Text(
                locations[0],
                style: dropDownMenuItemStyle,
              ),
              value: 0,
            ),
            PopupMenuItem(
              child: Text(
                locations[1],
                style: dropDownMenuItemStyle,
              ),
              value: 1,
            ),
          ],
    );
  }

  // Setting Widget
  Widget _buildSettingIcon() {
    return Icon(
      Icons.settings,
      color: whiteColor,
    );
  }

  // Search Location
  Widget _buildSearchLocation() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Material(
        elevation: 5.0,
        borderRadius: defaultBorderRadious,
        child: TextField(
          cursorColor: appTheme.primaryColor,
          controller: TextEditingController(text: locations[0]),
          style: dropDownMenuItemStyle,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
            suffixIcon: Material(
              elevation: 3.0,
              borderRadius: defaultBorderRadious,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FlightListingScreen()),
                  );
                },
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomeShapeCliper(),
          child: Container(
            height: 400.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [firstColor, secondColor],
              ),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.location_on, color: whiteColor),
                      SizedBox(
                        width: 16.0,
                      ),
                      _buildPopupMenuButton(),
                      Spacer(),
                      _buildSettingIcon(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Where would\nyou want to go?',
                  style: defaultTitleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.0,
                ),
                _buildSearchLocation(),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          isFlightSelected = true;
                        });
                      },
                      child: Choice(Icons.flight_takeoff, 'Flights', whiteColor,
                          isFlightSelected),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isFlightSelected = false;
                        });
                      },
                      child: Choice(
                          Icons.hotel, "Hotels", whiteColor, !isFlightSelected),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
