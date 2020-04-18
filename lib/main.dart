import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: "Poppins",
      primaryColor: Color.fromRGBO(255, 122, 122, 1.0),
      accentColor: Color.fromRGBO(56, 204, 140, 1.0),
    ),
    home: RegisterPage()));

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  ScrollController myScrollController;

  @override
  void initState() {
    myScrollController = ScrollController();
    // TODO: implement initState
    super.initState();
  }

  Widget formInputTextBox(String fieldName) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Center(
          child: TextField(
            style: TextStyle(fontSize: 26),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: fieldName,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                hintStyle:
                    TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
          ),
        ),
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Color.fromRGBO(255, 122, 122, 1.0),
      body: SingleChildScrollView(
        controller: myScrollController,
        child: Stack(
          children: <Widget>[
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Color.fromRGBO(255, 122, 122, 1.0), BlendMode.color),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 2,
                child: Image.asset(
                  "assets/bg-intro-mobile.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
//                color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.fromLTRB(
                      0,
                      MediaQuery.of(context).size.height * .04,
                      0,
                      MediaQuery.of(context).size.height * .02),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          flex: 6,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "Learn to code by watching others",
                                    style: TextStyle(
                                        fontSize: 32,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "See how experienced developers solve problems in real-time. Watching scripted tutorials is great, but understanding how developers think is invaluable.",
                                    style: TextStyle(
                                        wordSpacing: 4,
                                        height: 2,
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
                                    textScaleFactor: 1.0,
                                  )
                                ],
                              ),
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            myScrollController.animateTo(
                                MediaQuery.of(context).size.height,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.linear);
//                        setState(() {});
                          },
                          child: Card(
                            color: Color.fromRGBO(96, 85, 165, 1.0),
                            margin: EdgeInsets.all(5),
                            elevation: 10.0,
//                      width: MediaQuery.of(context).size.width * 0.85,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: Center(
                                  child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Try it free 7 days ',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700)),
                                    TextSpan(
                                        text: "then \n \$20/mo. thereafter",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(
                      0,
                      MediaQuery.of(context).size.height * .04,
                      0,
                      MediaQuery.of(context).size.height * .1),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      margin: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width * .08,
                          MediaQuery.of(context).size.height * .04,
                          MediaQuery.of(context).size.width * .08,
                          0),
                      child: Column(
                        children: <Widget>[
                          formInputTextBox("First Name"),
                          formInputTextBox("Last Name"),
                          formInputTextBox("Email Address"),
                          formInputTextBox("Password"),
                          GestureDetector(
                            onTap: () {
                              myScrollController.animateTo(
                                  -MediaQuery.of(context).size.height,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.linear);
                              setState(() {});
                            },
                            child: Card(
                              color: Color.fromRGBO(56, 204, 140, 1.0),
                              margin: EdgeInsets.all(5),
                              elevation: 10.0,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                width: MediaQuery.of(context).size.width * 0.65,
                                child: Center(
                                  child: Text(
                                    "CLAIM YOUR FREE TRIAL",
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        wordSpacing: 2),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                                width: MediaQuery.of(context).size.width * 0.60,
                                margin: EdgeInsets.only(top: 10),
                                alignment: Alignment(1, -0.4),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'By clicking the button, you are agreeing to our  ',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  185, 182, 211, 1.0),
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: "Terms and Services",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.red,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      )),
//                  color: Color.fromRGBO(56, 204, 140, 1.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
