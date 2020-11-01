import 'package:flutter/material.dart';
import 'package:trivago/authservice.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingsState();
  }
}

class _SettingsState extends State<Settings> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Settings'),
      // ),
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 30.0, 15.0, 25.0),
                    child: Container(
                      child: Text(
                        "Welcome to trivago!",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "card1bold",
                            letterSpacing: .1,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 30.0),
                    child:
                        Container(child: Image.asset("assets/searchimg2.jpg")),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 0.0, 15.0, 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Language',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(59, 70, 76, 1),
                              fontFamily: "card1",
                              letterSpacing: .1,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text('English, India',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey[500],
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 0.0, 15.0, 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Currency',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(59, 70, 76, 1),
                              fontFamily: "card1",
                              letterSpacing: .1,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text('INR - \u{20B9}',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey[500],
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 0.0, 15.0, 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Distance unit',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(59, 70, 76, 1),
                              fontFamily: "card1",
                              letterSpacing: .1,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text('Metric (kilometers)',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey[500],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 45),
                          child: Text(
                            'Manage data privacy settings',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(59, 70, 76, 1),
                                fontFamily: "card1",
                                letterSpacing: .1,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 38),
                          child: Text(
                            'Legal Information',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(59, 70, 76, 1),
                                fontFamily: "card1",
                                letterSpacing: .1,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 38),
                          child: Text(
                            'Privacy policy',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(59, 70, 76, 1),
                                fontFamily: "card1",
                                letterSpacing: .1,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 38),
                          child: Text(
                            'Help Centre',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(59, 70, 76, 1),
                                fontFamily: "card1",
                                letterSpacing: .1,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 38),
                          child: Text(
                            'App feedback',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(59, 70, 76, 1),
                                fontFamily: "card1",
                                letterSpacing: .1,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 38),
                          child: Text(
                            'Third-party licences',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(59, 70, 76, 1),
                                fontFamily: "card1",
                                letterSpacing: .1,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 15),
                        FlatButton(
                            onPressed: () async {
                              await _auth.signOut();
                            },
                            child: Text("signout",
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.red,
                                    fontFamily: "card1",
                                    letterSpacing: .1,
                                    fontWeight: FontWeight.bold))),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'App Version licenses',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[400],
                                fontFamily: "card1",
                                letterSpacing: .1,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
