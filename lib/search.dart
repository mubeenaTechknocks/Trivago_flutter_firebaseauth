import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return searchState();
  }
}

class searchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Search'),
      // ),
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "tri",
                        style: TextStyle(
                            color: Color.fromRGBO(2, 129, 174, 1),
                            fontSize: 42.0,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "va",
                        style: TextStyle(
                            color: Color.fromRGBO(245, 153, 23, 1),
                            fontSize: 42.0,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "go",
                        style: TextStyle(
                            color: Color.fromRGBO(204, 86, 63, 1),
                            fontSize: 42.0,
                            fontWeight: FontWeight.w900),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0.0, 90.0, 0.0, 0.0))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                    child: Card(
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        //  mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 13, 3, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Destination",
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 13.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Color.fromRGBO(235, 236, 238, 1)),
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Bengaluru",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  )),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 0.0),
                            child: Expanded(child: Divider()),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                            child: IntrinsicHeight(
                              child: new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Dates',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.grey[400],
                                          )),
                                      SizedBox(height: 3.5),
                                      Text('27 Sep - 28 Sept',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                          )),
                                    ],
                                  ),
                                  SizedBox(width: 25),
                                  VerticalDivider(),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Rooms',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.grey[400],
                                          )),
                                      SizedBox(height: 3.5),
                                      Text('2 guests, 1 room',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                          )),
                                    ],
                                  ),
                                  SizedBox(width: 25),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                            child: Expanded(child: Divider()),
                          ),
                          Center(
                              child: FlatButton(
                            color: Color.fromRGBO(0, 127, 172, 1),
                            textColor: Colors.white,
                            disabledColor: Colors.grey,
                            disabledTextColor: Colors.black,
                            padding: EdgeInsets.fromLTRB(130, 10, 130, 10),
                            splashColor: Color.fromRGBO(5, 135, 172, 1),
                            onPressed: () {
                              /*...*/
                            },
                            child: Text(
                              "Search Hotels",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: "card1",
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(13.0, 30.0, 13.0, 5.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: RichText(
                            text: TextSpan(
                              text: "Know before you go.",
                              style: TextStyle(
                                  fontSize: 14.5,
                                  color: Color.fromRGBO(59, 70, 76, 1),
                                  fontFamily: "card1bold",
                                  letterSpacing: .1,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      "The restrictions surrounding COVID- 19 change often.Please ",
                                  style: TextStyle(
                                    fontSize: 14.5,
                                    letterSpacing: .1,
                                    color: Color.fromRGBO(117, 124, 128, 1),
                                    fontFamily: "card1",
                                  ),
                                ),
                                TextSpan(
                                  text: "stay informed ",
                                  style: TextStyle(
                                    fontSize: 14.5,
                                    fontFamily: "card1",
                                    letterSpacing: .1,
                                    color: Color.fromRGBO(0, 127, 172, 1),
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      "before traveling.Stay safe.To help you further, we have put together a ",
                                  style: TextStyle(
                                      fontSize: 14.5,
                                      fontFamily: "card1",
                                      color: Color.fromRGBO(117, 124, 128, 1),
                                      letterSpacing: .1),
                                ),
                                TextSpan(
                                  text: "travel restrictions overview ",
                                  style: TextStyle(
                                      fontSize: 14.5,
                                      fontFamily: "card1",
                                      letterSpacing: .1,
                                      color: Color.fromRGBO(0, 127, 172, 1)),
                                ),
                                TextSpan(
                                  text: "for each country.",
                                  style: TextStyle(
                                    fontSize: 14.5,
                                    fontFamily: "card1",
                                    letterSpacing: .1,
                                    color: Color.fromRGBO(117, 124, 128, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 30.0),
                    child: Container(
                      child: Text(
                        "Looking for a hotel nearby tonight?",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "card1bold",
                            letterSpacing: .1,
                            color: Color.fromRGBO(62, 76, 82, 1),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 30.0),
                    child:
                        Container(child: Image.asset("assets/searchimg1.jpg")),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 30.0),
                    child:
                        Container(child: Image.asset("assets/searchimg2.jpg")),
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
