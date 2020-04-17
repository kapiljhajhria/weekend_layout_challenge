import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: RegisterPage()));

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HSLColor.fromAHSL(1.0, 0, 1.0, .74).toColor(),
      body: SingleChildScrollView(
        controller: myScrollController,
        child: Column(
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
//                        color: Colors.amberAccent,
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "Learn to code by watching others",
                                style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "See how experienced developers solve problems in real-time. Watching scripted tutorials is great, but understanding how developers think is invaluable.",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white70,
                                ),
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
                        setState(() {});
                      },
                      child: Card(
                        color: Colors.purple,
                        margin: EdgeInsets.all(5),
                        elevation: 10.0,
//                      width: MediaQuery.of(context).size.width * 0.85,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Center(
                            child: Text(
                              "Try it free 7 days then \n \$20/mo. thereafter",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Text("Hello"),
              color: Colors.green,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ],
        ),
      ),
    );
  }
}
