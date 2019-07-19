import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

final List<String> imgList = [
  'https://bradsknutson.com/wp-content/uploads/2018/03/Concerning-Garage-Home.jpg',
  'https://image.wrenkitchens.com/www/component/tp01/infinity_range_kitchens.jpg?q=70&w=767&h=510&fit=cover&s=3a16bb39c8357add37c0a49790d0e171',
  'https://i.ytimg.com/vi/O-KtKAj-EL8/maxresdefault.jpg',
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
          Image.network(i, fit: BoxFit.cover, width: 1000.0),
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
              child: Text(
                'Image house No. $index',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
    return Container(
      color: Color(0xFFFDFDFD),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 8, bottom: 8),child: Text(
            'Details',
            style: TextStyle(fontFamily: 'Montserrat', fontSize: 24),
            textAlign: TextAlign.center,
          ),),
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
            color: Color(0xFF3D6D85),
            indent: 8,
            endIndent: 8,
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.network(
                        'https://marianaruizwriting.com/wp-content/uploads/2018/06/Mariana-website-photo-2018.jpg',
                        height: 80.0,
                        width: 80.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'owner name: Larissa',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('Rent: \$500/mounth',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        Text('Rent paid on: June 02, 2019',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
