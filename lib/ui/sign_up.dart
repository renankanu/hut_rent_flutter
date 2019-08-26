import 'package:flutter/material.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscurePassword = true;
  bool _obscureRepPassword = true;

  void _togglePassword() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void _toggleRepPassword() {
    setState(() {
      _obscureRepPassword = !_obscureRepPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sign Up',
            style: TextStyle(
                fontFamily: 'MontserratLight',
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
        ),
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
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    width: 80,
                    height: 80,
                    child: Image.asset('images/hut.png'),
                  ),
                  Container(
                    width: 350,
                    margin: EdgeInsets.only(top: 32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color(0xFFAAFFFFFF)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Full Name'),
                        style: TextStyle(fontFamily: 'MontserratRegular'),
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    margin: EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color(0xFFAAFFFFFF)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'E-mail'),
                        style: TextStyle(fontFamily: 'MontserratRegular'),
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    margin: EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color(0xFFAAFFFFFF)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Phone Number'),
                        style: TextStyle(fontFamily: 'MontserratRegular'),
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    margin: EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color(0xFFAAFFFFFF)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            suffixIcon: IconButton(
                                icon: Icon(_obscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: _togglePassword)),
                        style: TextStyle(fontFamily: 'MontserratRegular'),
                        obscureText: _obscurePassword,
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    margin: EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color(0xFFAAFFFFFF)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Confirm Password',
                            suffixIcon: IconButton(
                                icon: Icon(_obscureRepPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: _toggleRepPassword)),
                        style: TextStyle(fontFamily: 'MontserratRegular'),
                        obscureText: _obscureRepPassword,
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    margin: EdgeInsets.only(top: 8.0),
                    child: RaisedButton(
                      child: Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontFamily: 'MontserratSemiBold', color: Colors.white),
                        ),
                      ),
                      splashColor: Colors.grey,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(16.0)),
                      color: Color(0xFF3D6D85),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Alredy have an account?',
                          style: TextStyle(fontFamily: 'MontserratRegular'),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontFamily: 'MontserratRegular',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
