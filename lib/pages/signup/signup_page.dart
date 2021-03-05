import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter30days/components/Text%20setting.dart';
import 'package:flutter30days/pages/login/login_page.dart';

class SignUpScreen extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin {
  final TextEditingController name_controller = new TextEditingController();
  final TextEditingController password_controller = new TextEditingController();
  final TextEditingController email_controller = new TextEditingController();
  final TextEditingController re_password_controller =
      new TextEditingController();
  String birthDateInString;
  String initValue = "Select your Birth Date";
  bool isDateSelected = false;
  DateTime birthDate;
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: true,
        body: new ListView(
          shrinkWrap: true,
          reverse: false,
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: new Row(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  })),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 0.0, bottom: 0.0, top: 0.0),
                              child: subHeadingText(
                                "SIGN UP",
                              ))
                        ],
                      ),
                    )
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Image.asset(
                      "assets/images/logoo.png",
                      height: 180.0,
                      width: 220.0,
                      fit: BoxFit.contain,
                    )
                  ],
                ),
                new Center(
                    child: new Center(
                  child: new Stack(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 30.0, right: 30.0),
                          child: new Form(
                            autovalidate: false,
                            child: new Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.0, right: 10.0),
                                  child: new TextFormField(
                                    style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                    controller: name_controller,
                                    decoration: new InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFe84c0f)),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFe84c0f)),
                                      ),
                                      labelText: "Full Name*",
                                      labelStyle: TextStyle(
                                          fontStyle: FontStyle.normal,
                                          color: Colors.black45,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                      filled: false,
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                                new Padding(
                                    padding: EdgeInsets.only(
                                        left: 5.0, right: 10.0, top: 5.0),
                                    child: new TextFormField(
                                      style: TextStyle(
                                          fontStyle: FontStyle.normal,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                      obscureText: false,
                                      controller: email_controller,
                                      decoration: new InputDecoration(
                                        labelText: "Email-Id",
                                        labelStyle: TextStyle(
                                            fontStyle: FontStyle.normal,
                                            color: Colors.black45,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFe84c0f)),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFe84c0f)),
                                        ),
                                        enabled: true,
                                        filled: false,
                                      ),
                                      keyboardType: TextInputType.text,
                                    )),
                                new Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.0, right: 10.0, top: 5.0),
                                  child: new TextFormField(
                                    onChanged: (text) {
                                      Text(isDateSelected
                                          ? "$birthDate"
                                          : initValue);
                                    },
                                    style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                    obscureText: false,
                                    decoration: new InputDecoration(
                                      suffix: GestureDetector(
                                          child: new Icon(
                                            Icons.calendar_today,
                                            color: Color(0xFFe84c0f),
                                          ),
                                          onTap: () async {
                                            final datePick =
                                                await showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                        new DateTime.now(),
                                                    firstDate:
                                                        new DateTime(1900),
                                                    lastDate:
                                                        new DateTime(2100));
                                            if (datePick != null &&
                                                datePick != birthDate) {
                                              setState(() {
                                                birthDate = datePick;
                                                isDateSelected = true;

                                                // put it here
                                                birthDateInString =
                                                    "${birthDate.month}/${birthDate.day}/${birthDate.year}"; // 08/14/2019
                                              });
                                            }
                                          }),
                                      labelText: "Date of Birth",
                                      hintText: "dd/mm/yy",
                                      labelStyle: TextStyle(
                                          fontStyle: FontStyle.normal,
                                          color: Colors.black45,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFe84c0f)),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFe84c0f)),
                                      ),
                                      enabled: true,
                                      filled: false,
                                    ),
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                                new Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0, right: 10.0, top: 5.0),
                                    child: new TextFormField(
                                      style: TextStyle(
                                          fontStyle: FontStyle.normal,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                      obscureText: true,
                                      controller: password_controller,
                                      decoration: new InputDecoration(
                                        labelText: "Password*",
                                        labelStyle: TextStyle(
                                            fontStyle: FontStyle.normal,
                                            color: Colors.black45,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFe84c0f)),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFe84c0f)),
                                        ),
                                        enabled: true,
                                        filled: false,
                                      ),
                                      keyboardType: TextInputType.text,
                                    )),
                                new Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0, right: 10.0, top: 5.0),
                                    child: new TextFormField(
                                      style: TextStyle(
                                          fontStyle: FontStyle.normal,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                      obscureText: true,
                                      controller: re_password_controller,
                                      decoration: new InputDecoration(
                                        labelText: "Confirm Password*",
                                        labelStyle: TextStyle(
                                            fontStyle: FontStyle.normal,
                                            color: Colors.black45,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFe84c0f)),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFe84c0f)),
                                        ),
                                        enabled: true,
                                        filled: false,
                                      ),
                                      keyboardType: TextInputType.text,
                                    )),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 1.2),
                                      child: Container(
                                        child: Row(
                                          children: <Widget>[
                                            new Checkbox(
                                              checkColor: Colors.black,
                                              activeColor: Colors.red,
                                              value: this.valuefirst,
                                              onChanged: (bool value) {
                                                setState(() {
                                                  this.valuefirst = value;
                                                });
                                              },
                                            ),
                                            subHeadingText(
                                                'Opt out of Mailing List')
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                new Padding(
                                  padding: EdgeInsets.only(
                                      left: 0.0, top: 45.0, bottom: 20.0),
                                  child: new RaisedButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(30.0)),
                                    onPressed: () {
                                      if (!(name_controller.value.text
                                              .toString()
                                              .trim()
                                              .length >
                                          0)) {
                                      }
                                      /* else if(!(email_controller.value.text.toString().trim().length>0))
                                      {

                                      }*/

                                      else if (!(password_controller.value.text
                                              .toString()
                                              .trim()
                                              .length >
                                          0)) {
                                      } else if (!(re_password_controller
                                              .value.text
                                              .toString()
                                              .trim()
                                              .length >
                                          0)) {
                                      } else {
                                        if (re_password_controller.value.text
                                            .toString()
                                            .endsWith(password_controller
                                                .value.text
                                                .toString())) {
                                          var root = MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen());
                                        } else {}
                                      }
                                    },
                                    child: new Text("SignUp ",
                                        style: TextStyle(
                                            fontStyle: FontStyle.normal,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20)),
                                    color: Color(0xFFe84c0f),
                                    textColor: Colors.white,
                                    elevation: 5.0,
                                    padding: EdgeInsets.only(
                                        left: 80.0,
                                        right: 80.0,
                                        top: 15.0,
                                        bottom: 15.0),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ))
              ],
            )
          ],
        ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    name_controller.dispose();
    password_controller.dispose();
    email_controller.dispose();
    re_password_controller.dispose();
    super.dispose();
  }
}
