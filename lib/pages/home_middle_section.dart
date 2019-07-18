import 'package:flutter/material.dart';
import 'package:trading_app/common_widget/city_card.dart';
import 'package:trading_app/style/text_style.dart';

class HomeScreenMiddleSection extends StatelessWidget {
  List<CityCard> cityCards = [
    CityCard('assets/images/city_01.jpeg', 'Las Vegas', 'Feb 2019', '45',
        '4299', '2250'),
    CityCard('assets/images/city_02.jpg', 'Las Vegas', 'Feb 2019', '46', '4299',
        '2250'),
    CityCard('assets/images/city_03.jpg', 'Las Vegas', 'Feb 2019', '47', '4299',
        '2250'),
    CityCard('assets/images/city_04.jpg', 'Las Vegas', 'Feb 2019', '48', '4299',
        '2250'),
    CityCard('assets/images/city_05.jpeg', 'Las Vegas', 'Feb 2019', '50',
        '4299', '2250')
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                'Currentely Watched Items',
                style: dropDownMenuItemStyle,
              ),
              Spacer(),
              Text(
                'View All (12)',
                style: viewAllStyle,
              ),
            ],
          ),
        ),
        Container(
          height: 250.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: cityCards,
          ),
        ),
      ],
    );
  }
}
