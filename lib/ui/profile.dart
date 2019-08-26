import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Joana Annie',
                      style: TextStyle(fontFamily: 'MontserratBold', fontSize: 26),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Edit Profile',
                          style: TextStyle(fontFamily: 'MontserratRegular'),
                        ),
                        SizedBox(width: 5,),
                        Icon(IconData(0xe802, fontFamily: 'Icons'), size: 14,)
                      ],
                    ),
                  )
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(8),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.network(
                      'https://ei.marketwatch.com/Multimedia/2017/04/17/Photos/ZH/MW-FK567_meredi_20170417135732_ZH.jpg?uuid=5481a3b0-2397-11e7-b251-001cc448aede',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Divider(
            indent: 16,
            endIndent: 16,
            height: 1,
            color: Color(0xFFB0BEC5),
          ),
          InkWell(
              onTap: () {
                print('Taped');
              },
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Notifications',
                      style: TextStyle(
                          fontFamily: 'MontserratMedium', fontSize: 16),
                    ),
                    Spacer(),
                    Icon(IconData(0xe858, fontFamily: 'Icons'))
                  ],
                ),
              )),
          Divider(
            indent: 16,
            endIndent: 16,
            height: 1,
            color: Color(0xFFB0BEC5),
          ),
          InkWell(
              onTap: () {
                print('Taped');
              },
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: <Widget>[
                    Text(
                      'My favorites',
                      style: TextStyle(
                          fontFamily: 'MontserratMedium', fontSize: 16),
                    ),
                    Spacer(),
                    Icon(IconData(0xe813, fontFamily: 'Icons'))
                  ],
                ),
              )),
          Divider(
            indent: 16,
            endIndent: 16,
            height: 1,
            color: Color(0xFFB0BEC5),
          ),
          InkWell(
              onTap: () {
                print('Taped');
              },
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Advertise Property',
                      style: TextStyle(
                          fontFamily: 'MontserratMedium', fontSize: 16),
                    ),
                    Spacer(),
                    Icon(IconData(0xe801, fontFamily: 'Icons'))
                  ],
                ),
              )),
          Divider(
            indent: 16,
            endIndent: 16,
            height: 1,
            color: Color(0xFFB0BEC5),
          ),
          InkWell(
              onTap: () {
                print('Taped');
              },
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Configurations',
                      style: TextStyle(
                          fontFamily: 'MontserratMedium', fontSize: 16),
                    ),
                    Spacer(),
                    Icon(IconData(0xe810, fontFamily: 'Icons'))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
