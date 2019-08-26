import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  Description(this.description);

  final String description;

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description>
    with TickerProviderStateMixin<Description> {
  int _maxLine = 4;
  String _readMore = 'Read more';

  void _changeStatusReadMore() {
    setState(() {
      _maxLine == 4 ? _maxLine = 15 : _maxLine = 4;
      _maxLine == 4 ? _readMore = 'Read more' : _readMore = 'Read less';
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
        duration: Duration(milliseconds: 1000),
        vsync: this,
        curve: Curves.bounceOut,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Description',
                style: TextStyle(fontFamily: 'MontserratBold', fontSize: 18),
              ),
              Text(
                "The space Small house in a courtyard. In Khouribga center of "
                "Morocco, 1 minute walk of the subway Olympique Khouribga "
                "(line 3 and line 4), at 2 minutes of the subway Simo "
                "(line 8, line 9) and at 5 minutes of the subway Arts and "
                "Dar Elmarrakchi (line 11). With the intersection of 2nd, 3rd and"
                " 10th district. ",
                style: TextStyle(
                    fontFamily: 'MontserratRegular',
                    fontSize: 14,
                    letterSpacing: 0.5),
                overflow: TextOverflow.ellipsis,
                maxLines: _maxLine,
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  child: Text(
                    _readMore,
                    style:
                        TextStyle(color: Colors.yellow[800],fontSize: 12, fontFamily: 'MontserratMedium'),
                  ),
                  onTap: () {
                    _changeStatusReadMore();
                  },
                ),
              )
            ],
          ),
        ));
  }
}
