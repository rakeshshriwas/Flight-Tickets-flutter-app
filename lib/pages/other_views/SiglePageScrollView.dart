import 'package:flutter/material.dart';

class SinglePageScrollView extends StatelessWidget {
  Widget _buildMyChip(String chipName) {
    return Container(
      child: RaisedButton(
        color: Color(0xfffcc8),
        child: Text(
          chipName,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: null,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                color: Color(0xffee66aa),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 34.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Today 9:00 PM',
                          style: TextStyle(
                            color: Color(0xffc7166f),
                          ),
                        ),
                      ),
                      Container(
                        child: Text('Easy And Gentle yoga',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0, top: 8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Wrap(
                            direction: Axis.horizontal,
                            spacing: 10.0,
                            runSpacing: 5.0,
                            children: <Widget>[
                              Center(
                                child: _buildMyChip("You are going"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xfff49cc8),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(75.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
