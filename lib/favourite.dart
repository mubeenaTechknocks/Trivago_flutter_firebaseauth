import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavouriteState();
  }
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'trivago',
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: new Container(
              height: 77,
              color: Colors.white,
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    new Expanded(child: new Container()),
                    new TabBar(
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: new Text(
                            "FAVOURITES",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: "card1",
                                letterSpacing: .1,
                                color: Color.fromRGBO(62, 76, 82, 1),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 9),
                          child: new Text(
                            "VIEWED",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: "card1",
                                letterSpacing: .1,
                                color: Color.fromRGBO(62, 76, 82, 1),
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Container(
                      child: Image.asset(
                    "assets/favimg1.jpg",
                    height: 718.0,
                  )),
                ],
              ),
              new Column(
                children: <Widget>[
                  new Container(
                      child: Image.asset(
                    "assets/favimg2.jpg",
                    height: 718.0,
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
