import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../ui/detail.dart';

class PropertiesCard extends StatefulWidget {
  final String type;
  final bool isFavorite;
  final String imgUrl;
  final String address;
  final String area;
  final String beds;
  final String baths;
  final String rentAmount;
  final String owner;
  final double rating;

  PropertiesCard(
      this.type,
      this.isFavorite,
      this.imgUrl,
      this.address,
      this.area,
      this.beds,
      this.baths,
      this.rentAmount,
      this.owner,
      this.rating);

  @override
  _PropertiesCardState createState() => _PropertiesCardState(this.isFavorite);
}

class _PropertiesCardState extends State<PropertiesCard> {
  bool _isFavorite;

  _PropertiesCardState(this._isFavorite);

  void _interactFavorite(bool isTrue) {
    setState(() {
      _isFavorite = isTrue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Detail()));
      },
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0, bottom: 8.0),
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Text(
                    widget.type,
                    style:
                        TextStyle(fontSize: 18, fontFamily: 'MontserratBold'),
                  ),
                  Positioned(
                    right: 0.0,
                    child: InkWell(
                      onTap: () {
                        _interactFavorite(_isFavorite == true ? false : true);
                      },
                      child: Icon(
                        _isFavorite == true
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: _isFavorite == true
                            ? Colors.redAccent
                            : Colors.grey,
                        size: 24.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Image.network(
                widget.imgUrl,
                width: double.infinity,
                height: 250,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 8.0, left: 8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      IconData(0xe833, fontFamily: 'Icons'),
                      size: 14,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Expanded(
                      child: Text(
                        widget.address,
                        style: TextStyle(fontFamily: 'MontserratLight'),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(top: 8.0, left: 8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '${widget.area} m² \u16EB ${widget.beds} Beds \u16EB ${widget.baths} Bath',
                    style: TextStyle(fontFamily: 'MontserratRegular'),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0, left: 8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Rent amount: ',
                    style: TextStyle(fontFamily: 'MontserratRegular'),
                  ),
                  Text('\$${widget.rentAmount}/month',
                      style: TextStyle(fontFamily: 'MontserratSemiBold'))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0, left: 8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Owner: ',
                    style: TextStyle(fontFamily: 'MontserratRegular'),
                  ),
                  Text(
                    widget.owner,
                    style: TextStyle(fontFamily: 'MontserratRegular'),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0, left: 8.0, bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '${widget.rating}',
                    style: TextStyle(fontFamily: 'MontserratMedium'),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  SmoothStarRating(
                    allowHalfRating: false,
                    starCount: 5,
                    rating: widget.rating,
                    size: 18,
                    spacing: 1.5,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
