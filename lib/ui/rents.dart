import 'package:flutter/material.dart';

import '../widgets/properties_card.dart';
import '../widgets/properties_list.dart';

class Rents extends StatefulWidget {
  @override
  _RentsState createState() => _RentsState();
}

class _RentsState extends State<Rents> {
  List<PropertiesCard> properties = []
    ..add(PropertiesCard(
        'APARTMENT',
        true,
        'https://media.equityapartments.com/images/q_50/f_auto/fl_lossy/4206-28/the-kelvin-apartments-exterior',
        'Calle de Fernando González, Madrid, Spain',
        '150',
        '5',
        '2',
        '9000',
        'Macarena',
        4.3))
    ..add(PropertiesCard(
        'HOUSE',
        false,
        'https://cdn.vox-cdn.com/thumbor/OtsH9PF4T2SHPAqDcP-d_ojUJDQ='
        '/0x0:3000x2000/920x613/filters:focal(1260x760:1740x1240):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/62922957/4854_Alonzo_Ave__Encino_FInals_34.0.jpg',
        'Calle Morenés Artega, Madrid, Spain',
        '150',
        '5',
        '2',
        '5000',
        'John',
        4.0))
    ..add(PropertiesCard(
        'APARTMENT',
        false,
        'https://media.equityapartments.com/images/q_50/f_auto/fl_lossy/4206-26/the-kelvin-apartments-exterior',
        'Calle de Navahonda, Madrid, Spain',
        '150',
        '5',
        '2',
        '800',
        'Mr. Robot',
        2.5))
    ..add(PropertiesCard(
        'APARTMENT',
        false,
        'https://1147794.v1.pressablecdn.com/wp-content/uploads/2014/11/The-Lane_KTGY_sm-696x464.jpg',
        'Calle Pedro Yague, Madrid, Spain',
        '500',
        '10',
        '6',
        '1500',
        'Marianna',
        5.0));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: PropertiesList(properties),
          )
        ],
      ),
    );
  }
}
