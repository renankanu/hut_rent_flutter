import 'package:flutter/material.dart';

import 'home.dart';
import 'sign_up.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _cbRememberPassword = false;

  void _cbChanged(bool value) => setState(() => _cbRememberPassword = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                0.1,
                0.5,
                0.7,
                0.9
              ],
                  colors: [
                Colors.yellow[800],
                Colors.yellow[700],
                Colors.yellow[600],
                Colors.yellow[400]
              ])),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('images/hut.png')),
                Container(
                  margin: EdgeInsets.only(top: 32),
                  child: Text(
                    'Welcome on Hut Rent!',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 24),
                  ),
                ),
                Container(
                  width: 350,
                  margin: EdgeInsets.only(
                    top: 32,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Color(0xFFAAFFFFFF)),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'E-MAIL'),
                        style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                      Divider(
                        color: Color(0xFF3D6D85),
                        indent: 8,
                        endIndent: 8,
                      ),
                      TextField(
                        obscureText: true,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'PASSWORD'),
                        style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Checkbox(
                                value: _cbRememberPassword,
                                onChanged: _cbChanged,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                activeColor: Colors.yellow,
                                checkColor: Color(0xFF3D6D85),
                              ),
                              Text(
                                'Remember me',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF3D6D85)),
                              ),
                            ],
                          ),
                        ),
                        Text('Forgot Password?',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Color(0xFF3D6D85)))
                      ],
                    )),
                Container(
                  width: 350,
                  child: RawMaterialButton(
                    fillColor: Color(0xFF3D6D85),
                    splashColor: Colors.grey,
                    child: Text(
                      'LOGIN',
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Montserrat'),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    shape: StadiumBorder(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 32),
                  child: FlatButton(
                    child: Text(
                      "Don't have an account? Sign Up",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.5,
                          color: Color(0xFF3D6D85),
                          fontSize: 14.0),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
