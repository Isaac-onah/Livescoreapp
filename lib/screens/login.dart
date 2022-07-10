import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:core';

import 'package:soccerrank/style/colors.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _key = new GlobalKey<FormState>();

  late String secreet;
  late String refresh;
  late String usarId;
  late String email, password;
  late bool _loading;
  late bool _passwordVisible;
  bool _validate = false;

  late String errmsg;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  /// submit login credentials to backend
  Widget _submitButton() {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(1.0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: FlatButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        // No any error in validation
                        _key.currentState!.save();

                      } else {
                        // validation error
                        setState(() {
                          _validate = true;
                        });
                      }
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            )
          ],
        ));
  }

  Widget _createAccountLabel() {
    TextStyle defaultStyle = TextStyle(
        color: Colors.grey, fontSize: 13.0, fontWeight: FontWeight.w600);
    TextStyle linkStyle = TextStyle(color: Colors.blue);
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.poppins(textStyle: defaultStyle),
                      children: <TextSpan>[
                        TextSpan(text: 'Don\'t have an account ?  '),
                        TextSpan(
                            text: 'Sign Up',
                            style: GoogleFonts.poppins(textStyle: linkStyle),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => register()));
                              }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email Address',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.purple,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      )),
                  textAlign: TextAlign.start),
              TextFormField(
                cursorColor: Color(0xFF44A8FF),
                style: TextStyle(color: Colors.white, fontFamily: 'SFUIDisplay'),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Color(0xFF44A8FF),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  fillColor: Color(0xFF303562),
                  filled: true,
                  labelText: 'Email Address',
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Color(0xFF0484d7),
                  ),
                  labelStyle: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ),
                validator: validateEmail,
                onSaved: (String? val) {
                  email = val!;
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: 50,
            child: TextFormField(
              cursorColor: AppColors.purple,
              style: TextStyle(color:AppColors.purple, fontFamily: 'SFUIDisplay'),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: AppColors.purple,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 1,
                    style: BorderStyle.none,
                  ),
                ),
                labelText: 'Phone Number',
                labelStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: AppColors.purple,
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                ),
              ),
              validator: validateEmail,
              onSaved: (String? val) {
                email = val!;
              },
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: 50,
            child: TextFormField(
              obscureText: !_passwordVisible,
              cursorColor: AppColors.purple,
              style: TextStyle(color: AppColors.purple, fontFamily: 'SFUIDisplay'),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    // Based on passwordVisible state choose the icon
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: AppColors.purple,
                  ),
                  onPressed: () {
                    // Update the state i.e. toogle the state of passwordVisible variable
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(
                    color: AppColors.purple,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 1,
                    style: BorderStyle.none,
                  ),
                ),
                labelText: 'Password',
                filled: true,
                labelStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: AppColors.purple,
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                ),
              ),
              validator: validateDetails,
              onSaved: (String? val) {
                password = val!;
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: height,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: new Form(
                    key: _key,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 50),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('Create Account',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: AppColors.purple,
                                          letterSpacing: 1,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    textAlign: TextAlign.start),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Create accouunt to view latest on your favourite league',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                        )),
                                    textAlign: TextAlign.start),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            _emailPasswordWidget(),
                            SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             passreset()));
                                  },
                                  child: Text('Forgot Password?',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Color(0xFF44A8FF),
                                            letterSpacing: 1,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      textAlign: TextAlign.end),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            _submitButton(),
                            SizedBox(height: 20),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  String? validateDetails(String? value) {
    if (value!.length == 0) {
      return "Value is Required";
    }
    return null;
  }

  String? validateEmail(String? value) {
    String pattern =
        r"[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value))
      return 'Enter a valid email address';
    else
      return null;
  }
}
class CustomDialog extends StatelessWidget {
  final String title, description;

  CustomDialog({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0))
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                description,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  child: Text('Close'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}