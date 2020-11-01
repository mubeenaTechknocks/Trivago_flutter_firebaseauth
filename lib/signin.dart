import 'package:flutter/material.dart';
import 'package:trivago/authservice.dart';
import 'package:trivago/register.dart';

class SignIn extends StatefulWidget {
  final Function toogleView;
  SignIn({this.toogleView});

  @override
  State<StatefulWidget> createState() {
    return _SignInState();
  }
}

class _SignInState extends State<SignIn> {
  // Initially password is obscure
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
            padding: EdgeInsets.fromLTRB(10, 10, 10, 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                    elevation: 1.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0.0, 25, 0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0.0, 10, 0.0, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.chevron_left,
                                    color: Color.fromRGBO(143, 152, 156, 1.0),
                                    size: 40.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "tri",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(2, 129, 174, 1),
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
                                            color:
                                                Color.fromRGBO(204, 86, 63, 1),
                                            fontSize: 35.0,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 20, 10, 8),
                              child: Text(
                                "Welcome Back!",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontFamily: "card1bold",
                                    letterSpacing: .1,
                                    color: Color.fromRGBO(58, 69, 76, 1.0),
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 10, 10),
                              child: Text(
                                "To log in, enter your email and password",
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
                              padding: const EdgeInsets.fromLTRB(5, 10, 10, 2),
                              child: Text(
                                "Email address",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "card1bold",
                                    letterSpacing: .1,
                                    color: Color.fromRGBO(58, 69, 76, 1.0),
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 1, 10, 10),
                              child: TextFormField(
                                  validator: (val) =>
                                      val.isEmpty ? "Email address" : null,
                                  decoration: new InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 10,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black87, width: .5),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black87, width: .5),
                                    ),
                                    hintText: 'Email address',
                                  ),
                                  onChanged: (val) {
                                    setState(() => {email = val});
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 10, 10, 2),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Password",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: "card1bold",
                                        letterSpacing: .1,
                                        color: Color.fromRGBO(58, 69, 76, 1.0),
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text(
                                    "Forgot your password?",
                                    style: TextStyle(
                                        fontSize: 15.5,
                                        fontFamily: "card1",
                                        letterSpacing: .1,
                                        color: Color.fromRGBO(0, 127, 172, 1.0),
                                        fontWeight: FontWeight.w800),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 1, 10, 10),
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
                                        color: Color.fromRGBO(58, 69, 76, 1.0),
                                      ),
                                      onPressed: () {
                                        // Update the state i.e. toogle the state of passwordVisible variable
                                        setState(() {
                                          _passwordVisible = !_passwordVisible;
                                        });
                                      },
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 10,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black87, width: .5),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black87, width: .5),
                                    ),
                                    hintText: 'Password',
                                  ),
                                  onChanged: (val) {
                                    setState(() => {password = val});
                                  }),
                            ),
                            // SizedBox(height: 20.2),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 10, 8),
                              child: FlatButton(
                                color: Color.fromRGBO(0, 127, 172, 1),
                                textColor: Colors.white,
                                disabledColor: Colors.grey,
                                disabledTextColor: Colors.black,
                                padding: EdgeInsets.fromLTRB(136, 10, 135, 10),
                                splashColor: Color.fromRGBO(5, 135, 172, 1),
                                onPressed: () async {
                                  if (_formKey.currentState.validate()) {
                                    dynamic result =
                                        await _auth.signWithEmailAndPassword(
                                            email, password);
                                    //  print("Valid");
                                    if (result == null) {
                                      setState(
                                          () => error = "could not sign in");
                                    } else {}
                                  }
                                },
                                child: Text(
                                  "Log in",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: "card1bold",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(height: 12.0),
                            Text(error, style: TextStyle(color: Colors.red)),

                            // Expanded(child: Divider()),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 25, 10, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: Color.fromRGBO(218, 218, 218, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 20, 10, 8),
                              child: Text(
                                "Or use trivago with another account",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "card1bold",
                                    letterSpacing: .1,
                                    color: Color.fromRGBO(58, 69, 76, 1.0),
                                    fontWeight: FontWeight.w800),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 10, 10, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black87,
                                    width: .5,
                                  ),
                                  borderRadius: BorderRadius.circular(1.0),
                                ),
                                child: Container(
                                    child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 8, 5, 10),
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
                                            color:
                                                Color.fromRGBO(58, 69, 76, 1.0),
                                            fontWeight: FontWeight.w800),
                                      ),
                                      SizedBox(width: 20),
                                    ],
                                  ),
                                )),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 10, 10, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black87,
                                    width: .5,
                                  ),
                                  borderRadius: BorderRadius.circular(1.0),
                                ),
                                child: Container(
                                    child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 8, 5, 10),
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
                                            color:
                                                Color.fromRGBO(58, 69, 76, 1.0),
                                            fontWeight: FontWeight.w800),
                                      ),
                                      SizedBox(width: 20),
                                    ],
                                  ),
                                )),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 10, 10, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black87,
                                    width: .5,
                                  ),
                                  borderRadius: BorderRadius.circular(1.0),
                                ),
                                child: Container(
                                    child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 8, 5, 10),
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
                                            color:
                                                Color.fromRGBO(58, 69, 76, 1.0),
                                            fontWeight: FontWeight.w800),
                                      ),
                                      SizedBox(width: 20),
                                    ],
                                  ),
                                )),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 10, 10, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black87,
                                    width: .5,
                                  ),
                                  borderRadius: BorderRadius.circular(1.0),
                                ),
                                child: Container(
                                    child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 8, 5, 10),
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
                                            color:
                                                Color.fromRGBO(58, 69, 76, 1.0),
                                            fontWeight: FontWeight.w800),
                                      ),
                                      SizedBox(width: 20),
                                    ],
                                  ),
                                )),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(5, 10, 10, 8),
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
                                          color: Color.fromRGBO(0, 127, 172, 1),
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
                                            color:
                                                Color.fromRGBO(0, 127, 172, 1)),
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 25, 20, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: .2,
                          color: Colors.grey[900],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 20, 8),
                  child: Text(
                    "Don't have an account yet?",
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: "card1bold",
                        letterSpacing: .1,
                        color: Color.fromRGBO(58, 69, 76, 1.0),
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black87,
                        width: .5,
                      ),
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                    child: Container(
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                            child: FlatButton(
                                onPressed: () => {widget.toogleView()},
                                child: Center(
                                  child: Text(
                                    'Create an account',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "card1bold",
                                        letterSpacing: .1,
                                        color: Colors.black87),
                                  ),
                                )))),
                  ),
                ),
              ],
            ),
          ),
        ])
      ])
    ]));
  }
}
// RaisedButton(
//   child: Text("signin anon"),
//   onPressed: () async {
//     dynamic result = await _auth.signInAnon();
//     if (result == null) {
//       print("error signing in");
//     } else {
//       print("signed in");
//       print(result.uid);
//     }
//   },
// )
