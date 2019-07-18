import 'package:flutter/material.dart';
import 'package:trading_app/style/colors.dart';

class FlightDetailChip extends StatelessWidget {
  final IconData iconData;
  final String lable;

  FlightDetailChip(this.iconData, this.lable);

  @override
  Widget build(BuildContext context) {
    return RawChip(
      label: Text(lable),
      labelStyle: TextStyle(color: Colors.black, fontSize: 14.0),
      backgroundColor: chipBgColor,
      avatar: Icon(
        iconData,
        size: 14.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    );
  }
}
