import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:soccerrank/screens/home.dart';
import 'package:soccerrank/screens/signup.dart';
import 'package:soccerrank/style/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthThreePage(),
    );
  }
}

class AuthThreePage extends StatefulWidget {
  static const routeName = '/AuthThreePage';
  @override
  _AuthThreePageState createState() => _AuthThreePageState();
}

class _AuthThreePageState extends State<AuthThreePage> {

  @override
  void initState() {
    super.initState();
  }

  Widget _signInButton() {
    return Container(
        child: OutlineButton(
            splashColor: Colors.grey,
            onPressed: () {},
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            highlightElevation: 0,
            borderSide: BorderSide(color: Colors.grey),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:10, vertical: 8),
                child: Column(children: <Widget>[
                  Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                            image: AssetImage("asset/google_logo.png"),
                            height: 30.0),
                        Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Google',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                )))
                      ])
                ]))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      ///------------------------------------------------
      ///  Build main content with container.
      ///------------------------------------------------
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Image.asset("asset/bak.png"),
              ),
            ),
            Container(
                child: OutlineButton(
                    splashColor: Colors.grey,
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: "hello",)));
                    },
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    highlightElevation: 0,
                    borderSide: BorderSide(color: Colors.grey),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:10, vertical: 8),
                        child: Column(children: <Widget>[
                          Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                    image: AssetImage("asset/google_logo.png"),
                                    height: 25.0),
                                Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text('Google Login',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                        )))
                              ])
                        ])))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Don\'t have a google account ?  ', style: TextStyle(color: Colors.grey),),
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(color: AppColors.purple, fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              }),
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 20,)
          ],
        ));
  }
}
