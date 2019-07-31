import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Description', style: TextStyle(fontFamily: 'MontserratBold', fontSize: 18),),
          Text("The space Small house in a courtyard. In Khouribga center of "
              "Morocco, 1 minute walk of the subway Olympique Khouribga "
              "(line 3 and line 4), at 2 minutes of the subway Simo "
              "(line 8, line 9) and at 5 minutes of the subway Arts and "
              "Dar Elmarrakchi (line 11). With the intersection of 2nd, 3rd and"
              " 10th district. ", style: TextStyle(fontFamily: 'MontserratRegular',fontSize: 14, letterSpacing: 0.5),)
        ],
      ),
    );
  }
}
