import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DiscoverState();
  }
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Discover'),
      // ),
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Discover top deals for ",
                              style: TextStyle(
                                  fontSize: 28.0,
                                  fontFamily: "card1bold",
                                  letterSpacing: .1,
                                  color: Color.fromRGBO(62, 76, 82, 1),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "nearby stays ",
                              style: TextStyle(
                                  fontSize: 28.0,
                                  fontFamily: "card1bold",
                                  letterSpacing: .1,
                                  color: Color.fromRGBO(62, 76, 82, 1),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Max. 300 km outside Kochi",
                                    style: TextStyle(
                                        fontSize: 15.5,
                                        fontFamily: "card1bold",
                                        letterSpacing: .1,
                                        color: Color.fromRGBO(62, 76, 82, 1),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 1.0),
                                    child: Text(
                                      "Up to Rs 17,962 per night",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          letterSpacing: .1,
                                          color:
                                              Color.fromRGBO(117, 124, 128, 1),
                                          fontFamily: "card1",
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 1),
                                    child: Text(
                                      "2 night stay",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          letterSpacing: .1,
                                          color:
                                              Color.fromRGBO(117, 124, 128, 1),
                                          fontFamily: "card1",
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: FlatButton(
                                        color: Color.fromRGBO(0, 127, 172, 1),
                                        textColor: Colors.white,
                                        disabledColor: Colors.grey,
                                        disabledTextColor: Colors.black,
                                        padding: EdgeInsets.fromLTRB(
                                            25.0, 10.0, 25.0, 10.0),
                                        splashColor:
                                            Color.fromRGBO(5, 135, 172, 1),
                                        onPressed: () {
                                          /*...*/
                                        },
                                        child: Text("Change preferences",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontFamily: "card1",
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.0,
                                            )),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    50.0, 10.0, 0.0, 0.0),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        child: Image.asset(
                                      "assets/discoverimg1.jpg",
                                      height: 120.0,
                                    ))),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1.0),
                    child: Container(
                      height: 1.5,
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey[500],
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    child: Container(
                      // height: 500,
                      child: Card(
                          child: Column(
                        children: [
                          Container(
                              child: Image.asset(
                            "assets/dimg1.jpg",
                            height: 120.0,
                          )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Prathiba Heritage",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: "card1bold",
                                      letterSpacing: .1,
                                      color: Color.fromRGBO(78, 90, 96, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.grade,
                                      color: Color.fromRGBO(126, 131, 134, 1),
                                      size: 12.0,
                                    ),
                                    Icon(
                                      Icons.grade,
                                      color: Color.fromRGBO(126, 131, 134, 1),
                                      size: 12.0,
                                    ),
                                    Icon(
                                      Icons.grade,
                                      color: Color.fromRGBO(126, 131, 134, 1),
                                      size: 12.0,
                                    ),
                                    Icon(
                                      Icons.grade,
                                      color: Color.fromRGBO(126, 131, 134, 1),
                                      size: 12.0,
                                    ),
                                    Icon(
                                      Icons.grade,
                                      color: Color.fromRGBO(126, 131, 134, 1),
                                      size: 12.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        "Hotel",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          //fontFamily: "card1bold",
                                          letterSpacing: .1,
                                          color:
                                              Color.fromRGBO(126, 131, 134, 1),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 13, 0, 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color.fromRGBO(78, 90, 96, 1),
                                        size: 24.0,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          "Thiruvananthapuram, 177 km from Kochi",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontFamily: "card1",
                                              letterSpacing: .2,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 8, 0, 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.date_range,
                                        color: Color.fromRGBO(78, 90, 96, 1),
                                        size: 24.0,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          "8 Oct - 10 Oct, Thu - Sat",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontFamily: "card1",
                                              letterSpacing: .2,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(
                                          color:
                                              Color.fromRGBO(218, 218, 218, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 5, 20, 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 3),
                                                child: Text(
                                                  '\u{20B9}',
                                                  style: TextStyle(
                                                    fontSize: 29.0,
                                                    fontFamily: "card1bold",
                                                    color: Color.fromRGBO(
                                                        92, 143, 42, 1),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 3),
                                                child: Text(
                                                  '4,804',
                                                  style: TextStyle(
                                                    fontSize: 25.0,
                                                    fontFamily: "card1bold",
                                                    letterSpacing: .1,
                                                    color: Color.fromRGBO(
                                                        92, 143, 42, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "per night",
                                                style: TextStyle(
                                                  fontSize: 11.0,
                                                  fontFamily: "card1bold",
                                                  letterSpacing: .1,
                                                  color: Color.fromRGBO(
                                                      126, 131, 134, 1),
                                                ),
                                              ),
                                              SizedBox(width: 25)
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "20% less than usual",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontFamily: "card1",
                                            letterSpacing: .1,
                                            color:
                                                Color.fromRGBO(92, 143, 42, 1),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    child: Container(
                      // height: 500,
                      child: Card(
                          child: Column(
                        children: [
                          Container(
                              child: Image.asset(
                            "assets/dimg3.jpg",
                            height: 120.0,
                          )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Parakkat Nature Resort",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: "card1bold",
                                      letterSpacing: .1,
                                      color: Color.fromRGBO(78, 90, 96, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.grade,
                                        color: Color.fromRGBO(126, 131, 134, 1),
                                        size: 12.0,
                                      ),
                                      Icon(
                                        Icons.grade,
                                        color: Color.fromRGBO(126, 131, 134, 1),
                                        size: 12.0,
                                      ),
                                      Icon(
                                        Icons.grade,
                                        color: Color.fromRGBO(126, 131, 134, 1),
                                        size: 12.0,
                                      ),
                                      Icon(
                                        Icons.grade,
                                        color: Color.fromRGBO(126, 131, 134, 1),
                                        size: 12.0,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Text(
                                          "Hotel",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            //fontFamily: "card1bold",
                                            letterSpacing: .1,
                                            color: Color.fromRGBO(
                                                126, 131, 134, 1),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 13, 0, 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color.fromRGBO(78, 90, 96, 1),
                                        size: 24.0,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          "Coimbatore, 149 km from Kochi",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontFamily: "card1",
                                              letterSpacing: .2,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 8, 0, 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.date_range,
                                        color: Color.fromRGBO(78, 90, 96, 1),
                                        size: 24.0,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          "26 Sep - 28 Sep, Sat - Mon",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontFamily: "card1",
                                              letterSpacing: .2,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(
                                          color:
                                              Color.fromRGBO(218, 218, 218, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 5, 20, 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 3),
                                                child: Text(
                                                  '\u{20B9}',
                                                  style: TextStyle(
                                                    fontSize: 29.0,
                                                    fontFamily: "card1bold",
                                                    color: Color.fromRGBO(
                                                        92, 143, 42, 1),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 3),
                                                child: Text(
                                                  '1,107',
                                                  style: TextStyle(
                                                    fontSize: 25.0,
                                                    fontFamily: "card1bold",
                                                    letterSpacing: .1,
                                                    color: Color.fromRGBO(
                                                        92, 143, 42, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "per night",
                                                style: TextStyle(
                                                  fontSize: 11.0,
                                                  fontFamily: "card1bold",
                                                  letterSpacing: .1,
                                                  color: Color.fromRGBO(
                                                      126, 131, 134, 1),
                                                ),
                                              ),
                                              SizedBox(width: 25)
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "23% less than usual",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontFamily: "card1",
                                            letterSpacing: .1,
                                            color:
                                                Color.fromRGBO(92, 143, 42, 1),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                    child: Container(
                      // height: 500,
                      child: Card(
                          child: Column(
                        children: [
                          Container(
                              child: Image.asset(
                            "assets/dimg2.jpg",
                            height: 120.0,
                          )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fairfield By Marriott",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: "card1bold",
                                      letterSpacing: .1,
                                      color: Color.fromRGBO(78, 90, 96, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    "Resort",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      //fontFamily: "card1bold",
                                      letterSpacing: .1,
                                      color: Color.fromRGBO(126, 131, 134, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 13, 0, 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color.fromRGBO(78, 90, 96, 1),
                                        size: 24.0,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          "Munnar, 85 km from Kochi",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontFamily: "card1",
                                              letterSpacing: .2,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 8, 0, 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.date_range,
                                        color: Color.fromRGBO(78, 90, 96, 1),
                                        size: 24.0,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          "16 Oct - 18 Oct, Fri - Sun",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontFamily: "card1",
                                              letterSpacing: .2,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(
                                          color:
                                              Color.fromRGBO(218, 218, 218, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 5, 20, 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 3),
                                                child: Text(
                                                  '\u{20B9}',
                                                  style: TextStyle(
                                                    fontSize: 29.0,
                                                    fontFamily: "card1bold",
                                                    color: Color.fromRGBO(
                                                        92, 143, 42, 1),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 3),
                                                child: Text(
                                                  '3,224',
                                                  style: TextStyle(
                                                    fontSize: 25.0,
                                                    fontFamily: "card1bold",
                                                    letterSpacing: .1,
                                                    color: Color.fromRGBO(
                                                        92, 143, 42, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "per night",
                                                style: TextStyle(
                                                  fontSize: 11.0,
                                                  fontFamily: "card1bold",
                                                  letterSpacing: .1,
                                                  color: Color.fromRGBO(
                                                      126, 131, 134, 1),
                                                ),
                                              ),
                                              SizedBox(width: 25)
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "27% less than usual",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontFamily: "card1",
                                            letterSpacing: .1,
                                            color:
                                                Color.fromRGBO(92, 143, 42, 1),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
