import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/description.dart';
import '../widgets/map.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

final List<String> imgList = [
  'https://bradsknutson.com/wp-content/uploads/2018/03/Concerning-Garage-Home.jpg',
  'https://image.wrenkitchens.com/www/component/tp01/infinity_range_kitchens.jpg?q=70&w=767&h=510&fit=cover&s=3a16bb39c8357add37c0a49790d0e171',
  'https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2016/10/13/2/dh_2017_master-bedroom-01-room-wide-angle_h.jpg.rend.hgtvcom.966.725.suffix/1476401242902.jpeg',
  'https://salaarc.com/wp-content/uploads/2017/04/EricOdor_SALA_ff00main.jpg',
  'https://cdn.leroymerlin.com.br/contents/banheiro_grande_moderno_af3b_original.jpg',
  'https://www.decorfacil.com/wp-content/uploads/2016/08/Imagem-37.jpg',
  'http://marquespiscinas.com.br/loja/wp-content/uploads/2016/11/banco100081087894-600x600.jpg'
];

final List child = map<Widget>(
  imgList,
  (index, i) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(children: <Widget>[
          FadeInImage.assetNetwork(
            placeholder: 'images/no_image.png',
            image: i,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
//          Image.network(i, fit: BoxFit.cover, width: 1000.0),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(200, 0, 0, 0),
                    Color.fromARGB(0, 0, 0, 0)
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            ),
          ),
        ]),
      ),
    );
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

class _DetailState extends State<Detail> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xFFFDFDFD),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                'Details',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
            CarouselSlider(
              items: child,
              autoPlay: false,
              reverse: false,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? Colors.yellow[800]
                          : Color(0xFF3D6D85)),
                );
              }),
            ),
            Divider(
              color: Color(0xFFC2C2C2),
              indent: 8,
              endIndent: 8,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            'House',
                            style: TextStyle(
                                fontFamily: 'MontserratBold', fontSize: 24),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Image.asset(
                                    'images/area.png',
                                    height: 14,
                                    width: 14,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Area',
                                    style: TextStyle(
                                        fontFamily: 'MontserratSemiBold',
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '85m²',
                                    style: TextStyle(
                                        fontFamily: 'MontserratLight'),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Image.asset(
                                    'images/bed.png',
                                    height: 14,
                                    width: 14,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Bedrooms',
                                    style: TextStyle(
                                        fontFamily: 'MontserratSemiBold',
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '4',
                                    style: TextStyle(
                                        fontFamily: 'MontserratLight'),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Image.asset(
                                    'images/bath.png',
                                    height: 14,
                                    width: 14,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Bathrooms',
                                    style: TextStyle(
                                        fontFamily: 'MontserratSemiBold',
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '2',
                                    style: TextStyle(
                                        fontFamily: 'MontserratLight'),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Image.asset(
                                    'images/car.png',
                                    height: 14,
                                    width: 14,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Car Port',
                                    style: TextStyle(
                                        fontFamily: 'MontserratSemiBold',
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '1',
                                    style: TextStyle(
                                        fontFamily: 'MontserratLight'),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )),
            ),
            Divider(
              color: Color(0xFFC2C2C2),
              indent: 8,
              endIndent: 8,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Location',
                        style: TextStyle(
                            fontFamily: 'MontserratBold', fontSize: 18),
                      ),
                      Text(
                        'Rue Ouled Ayed, 56',
                        style: TextStyle(
                          fontFamily: 'MontserratSemiBold',
                        ),
                      ),
                      Text(
                        'Khouribga, Morocco',
                        style: TextStyle(
                          fontFamily: 'MontserratLight',
                        ),
                      ),
                    ],
                  )),
                )
              ],
            ),
            Card(
              margin: EdgeInsets.only(left: 8, right: 8),
              child: Container(
                width: double.infinity,
                height: 250,
                child: Map(),
              ),
            ),
            Divider(
              color: Color(0xFFC2C2C2),
              indent: 8,
              endIndent: 8,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Description(),
            ),
            Divider(
              color: Color(0xFFC2C2C2),
              indent: 8,
              endIndent: 8,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network(
                      'https://marianaruizwriting.com/wp-content/uploads/2018/06/Mariana-website-photo-2018.jpg',
                      height: 80.0,
                      width: 80.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      RichText(
                          text: TextSpan(
                              // set the default style for the children TextSpans
                              style: DefaultTextStyle.of(context).style,
                              children: [
                            TextSpan(
                                text: 'Owner: ',
                                style:
                                    TextStyle(fontFamily: 'MontserratLight')),
                            TextSpan(
                                text: 'Marianna Souza',
                                style: TextStyle(
                                    fontFamily: 'MontserratMedium',
                                    fontWeight: FontWeight.w400)),
                          ])),
                      RichText(
                          text: TextSpan(
                              // set the default style for the children TextSpans
                              style: DefaultTextStyle.of(context).style,
                              children: [
                            TextSpan(
                                text: 'Contact: ',
                                style:
                                    TextStyle(fontFamily: 'MontserratLight')),
                            TextSpan(
                                text: '+55 44 99722-8610',
                                style: TextStyle(
                                    fontFamily: 'MontserratMedium',
                                    fontWeight: FontWeight.w400)),
                          ])),
                      RichText(
                          text: TextSpan(
                              // set the default style for the children TextSpans
                              style: DefaultTextStyle.of(context).style,
                              children: [
                            TextSpan(
                                text: 'Rent: ',
                                style:
                                    TextStyle(fontFamily: 'MontserratLight')),
                            TextSpan(
                                text: '\$250/month',
                                style: TextStyle(
                                    fontFamily: 'MontserratMedium',
                                    fontWeight: FontWeight.w400)),
                          ])),
                      RichText(
                          text: TextSpan(
                              // set the default style for the children TextSpans
                              style: DefaultTextStyle.of(context).style,
                              children: [
                            TextSpan(
                                text: 'Reputation: ',
                                style:
                                    TextStyle(fontFamily: 'MontserratLight')),
                            TextSpan(
                                text: 'Good',
                                style: TextStyle(
                                    fontFamily: 'MontserratMedium',
                                    fontWeight: FontWeight.w400)),
                          ])),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
