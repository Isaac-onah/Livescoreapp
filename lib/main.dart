import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:soccerrank/screens/home.dart';
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
            SignInButton(
              Buttons.Google,
              padding: EdgeInsets.all(8.0),
              text: "Continue with Google",
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: "hello",)));
              },
            ),
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
                            style: TextStyle(color: AppColors.purple),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
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
