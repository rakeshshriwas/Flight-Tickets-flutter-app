import 'package:flutter/material.dart';
import 'package:trading_app/style/colors.dart';

class Choice extends StatefulWidget {
  final IconData icon;
  final String text;
  final Color choiceColor;
  final bool isSelected;

  Choice(this.icon, this.text, this.choiceColor, this.isSelected);
  @override
  _ChoiceState createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      decoration: widget.isSelected
          ? BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            )
          : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            widget.icon,
            size: 20.0,
            color: whiteColor,
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            widget.text,
            style: TextStyle(fontSize: 16.0, color: widget.choiceColor),
          )
        ],
      ),
    );
  }
}
