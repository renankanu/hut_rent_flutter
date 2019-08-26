import 'package:flutter/material.dart';
import '../widgets/map_search.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        MapSearch(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Container(
            margin: EdgeInsets.only(top: 8.0, bottom: 15.0),
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(5.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon:
                      Icon(IconData(0xe86f, fontFamily: 'Icons'), color: Colors.yellow[800], size: 24.0),
                      contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Colors.yellow[800],
                          fontFamily: 'MontserratRegular')),
                  style: TextStyle(fontFamily: 'MontserratLight'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
