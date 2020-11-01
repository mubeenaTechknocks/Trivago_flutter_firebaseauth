import 'package:flutter/material.dart';
import 'package:trivago/authservice.dart';

class Register extends StatefulWidget {
  final Function toogleView;
  Register({this.toogleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _passwordVisible = false;

  void initState() {
    _passwordVisible = false;
  }

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = " ";
  String password = " ";
  String error = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Stack(children: <Widget>[
        Column(children: <Widget>[
          Container(
            color: Color.fromRGBO(245, 245, 245, 1.0),
            padding: EdgeInsets.fromLTRB(10, 20, 10, 50),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  elevation: 1.0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0.0, 0, 0),
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 10, 0.0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FlatButton.icon(
                                    onPressed: () => widget.toogleView(),
                                    icon: Icon(
                                      Icons.chevron_left,
                                      color: Color.fromRGBO(143, 152, 156, 1.0),
                                      size: 35.0,
                                    ),
                                    label: Text("")),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "tri",
                                      style: TextStyle(
                                          color: Color.fromRGBO(2, 129, 174, 1),
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      "va",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(245, 153, 23, 1),
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      "go",
                                      style: TextStyle(
                                          color: Color.fromRGBO(204, 86, 63, 1),
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 140)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 0.0, 25, 0),
                            child: Container(
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 20, 10, 8),
                                      child: Text(
                                        "Create your account",
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontFamily: "card1bold",
                                            letterSpacing: .1,
                                            color:
                                                Color.fromRGBO(58, 69, 76, 1.0),
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 0, 10, 10),
                                      child: Text(
                                        "Add a strong password to finish up",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: "card",
                                          letterSpacing: .1,
                                          color: Colors.grey[800],
                                        ),
                                      ),
                                    ),
                                    // SizedBox(height: 20.2),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 10, 10, 2),
                                      child: Text(
                                        "Email address",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "card1bold",
                                            letterSpacing: .1,
                                            color:
                                                Color.fromRGBO(58, 69, 76, 1.0),
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 1, 10, 10),
                                      child: TextFormField(
                                          validator: (val) => val.isEmpty
                                              ? "Email address"
                                              : null,
                                          decoration: new InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                              vertical: 0,
                                              horizontal: 10,
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black87,
                                                  width: .5),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black87,
                                                  width: .5),
                                            ),
                                            hintText: 'Email address',
                                          ),
                                          onChanged: (val) {
                                            setState(() => {email = val});
                                          }),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 10, 10, 2),
                                      child: Text(
                                        "Password",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "card1bold",
                                            letterSpacing: .1,
                                            color:
                                                Color.fromRGBO(58, 69, 76, 1.0),
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 1, 10, 0),
                                      child: TextFormField(
                                          validator: (val) => val.length < 6
                                              ? "Password must be greater than 6"
                                              : null,
                                          obscureText: !_passwordVisible,
                                          decoration: new InputDecoration(
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                  // Based on passwordVisible state choose the icon
                                                  _passwordVisible
                                                      ? Icons.visibility
                                                      : Icons.visibility_off,
                                                  color: Color.fromRGBO(
                                                      58, 69, 76, 1.0),
                                                  size: 20),
                                              onPressed: () {
                                                // Update the state i.e. toogle the state of passwordVisible variable
                                                setState(() {
                                                  _passwordVisible =
                                                      !_passwordVisible;
                                                });
                                              },
                                            ),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                              vertical: 0,
                                              horizontal: 10,
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black87,
                                                  width: .5),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black87,
                                                  width: .5),
                                            ),
                                            hintText: 'At least 6 characters',
                                          ),
                                          onChanged: (val) {
                                            setState(() => {password = val});
                                          }),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 3, 10, 10),
                                      child: Text(
                                        "Strength - Must be 6 characters or long",
                                        style: TextStyle(
                                            fontSize: 13.5,
                                            fontFamily: "card1",
                                            color: Colors.grey[800],
                                            letterSpacing: .1),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 10, 10, 8),
                                      child: FlatButton(
                                        color: Color.fromRGBO(0, 127, 172, 1),
                                        textColor: Colors.white,
                                        disabledColor: Colors.grey,
                                        disabledTextColor: Colors.black,
                                        padding: EdgeInsets.fromLTRB(
                                            125, 10, 125, 10),
                                        splashColor:
                                            Color.fromRGBO(5, 135, 172, 1),
                                        onPressed: () async {
                                          if (_formKey.currentState
                                              .validate()) {
                                            dynamic result = await _auth
                                                .registerWithEmailAndPassword(
                                                    email, password);
                                            if (result == null) {
                                              setState(() => error =
                                                  "enter a valid email id");
                                            } else {}
                                          }
                                        },
                                        child: Text(
                                          "Register",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "card1bold",
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 12.0),
                                    Text(error,
                                        style: TextStyle(color: Colors.red)),
                                    // Expanded(child: Divider()),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 25, 10, 8),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            top: BorderSide(
                                              color: Color.fromRGBO(
                                                  218, 218, 218, 1),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 20, 10, 8),
                                      child: Text(
                                        "Or use trivago with another account",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: "card1bold",
                                            letterSpacing: .1,
                                            color:
                                                Color.fromRGBO(58, 69, 76, 1.0),
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 10, 10, 8),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black87,
                                            width: .5,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(1.0),
                                        ),
                                        child: Container(
                                            child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 8, 5, 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                "assets/si1.jpg",
                                                width: 22,
                                                height: 22,
                                              ),
                                              Text(
                                                'Continue with Google',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: "card1bold",
                                                    letterSpacing: .1,
                                                    color: Color.fromRGBO(
                                                        58, 69, 76, 1.0),
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              SizedBox(width: 20),
                                            ],
                                          ),
                                        )),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 10, 10, 8),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black87,
                                            width: .5,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(1.0),
                                        ),
                                        child: Container(
                                            child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 8, 5, 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                "assets/si2.jpg",
                                                width: 22,
                                                height: 22,
                                              ),
                                              Text(
                                                'Continue with Facebook',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: "card1bold",
                                                    letterSpacing: .1,
                                                    color: Color.fromRGBO(
                                                        58, 69, 76, 1.0),
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              SizedBox(width: 20),
                                            ],
                                          ),
                                        )),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 10, 10, 8),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black87,
                                            width: .5,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(1.0),
                                        ),
                                        child: Container(
                                            child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 8, 5, 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                "assets/si3.jpg",
                                                width: 22,
                                                height: 22,
                                              ),
                                              Text(
                                                'Continue with Amazon',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: "card1bold",
                                                    letterSpacing: .1,
                                                    color: Color.fromRGBO(
                                                        58, 69, 76, 1.0),
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              SizedBox(width: 20),
                                            ],
                                          ),
                                        )),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 10, 10, 0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black87,
                                            width: .5,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(1.0),
                                        ),
                                        child: Container(
                                            child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 8, 5, 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                "assets/si4.jpg",
                                                width: 22,
                                                height: 22,
                                              ),
                                              Text(
                                                'Continue with Apple',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: "card1bold",
                                                    letterSpacing: .1,
                                                    color: Color.fromRGBO(
                                                        58, 69, 76, 1.0),
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              SizedBox(width: 20),
                                            ],
                                          ),
                                        )),
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 10, 10, 20),
                                        child: RichText(
                                          text: TextSpan(
                                            text:
                                                "Reminder: by signing up, you are agreeing to our ",
                                            style: TextStyle(
                                              fontSize: 13,
                                              letterSpacing: .1,
                                              color: Colors.grey[800],
                                              fontFamily: "card1",
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "Privacy Policy ",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: "card1",
                                                  letterSpacing: .1,
                                                  color: Color.fromRGBO(
                                                      0, 127, 172, 1),
                                                ),
                                              ),
                                              TextSpan(
                                                text: "and ",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontFamily: "card1",
                                                    color: Colors.grey[800],
                                                    letterSpacing: .1),
                                              ),
                                              TextSpan(
                                                text: "Terms of Use",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontFamily: "card1",
                                                    letterSpacing: .1,
                                                    color: Color.fromRGBO(
                                                        0, 127, 172, 1)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ])
      ])
    ]));
  }
}
//   final AuthService _auth = AuthService();

//   String email = " ";
//   String password = " ";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueAccent,
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         elevation: 1.0,
//         title: Text("Trivago"),
//       ),
//       body: Container(
//           padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
//           child: Form(
//               child: Column(children: <Widget>[
//             SizedBox(height: 20.2),
//             TextFormField(onChanged: (val) {
//               setState(() => {email = val});
//             }),
//             SizedBox(height: 20.2),
//             TextFormField(
//                 obscureText: true,
//                 onChanged: (val) {
//                   setState(() => {password = val});
//                 }),
//             SizedBox(height: 20.2),
//             RaisedButton(
//               color: Colors.blueAccent,
//               onPressed: () async {
//                 print(email);
//                 print(password);
//               },
//               child: Text(
//                 "Register ",
//                 style: TextStyle(color: Colors.deepPurpleAccent),
//               ),
//             )
//           ]))

//           // RaisedButton(
//           //   child: Text("signin anon"),
//           //   onPressed: () async {
//           //     dynamic result = await _auth.signInAnon();
//           //     if (result == null) {
//           //       print("error signing in");
//           //     } else {
//           //       print("signed in");
//           //       print(result.uid);
//           //     }
//           //   },
//           // )
//           ),
//     );
//   }
// }
