import 'package:flutter/material.dart';
import 'package:flutter30days/components/Text%20setting.dart';
import 'package:flutter30days/pages/Detailsadd/Viewtext.dart';
import 'package:flutter30days/pages/home/widgets/app_bar_title_widget.dart';
import 'package:flutter30days/utils/constants.dart';

const Color primary = Color(0xffE20056);
const TextStyle whiteBoldText = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
const TextStyle whiteText = TextStyle(
  color: Colors.white,
);
const TextStyle primaryText = TextStyle(
  color: primary,
);

class AddDetails extends StatefulWidget {
  @override
  _AddDetailsState createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  static final String path = "lib/src/pages/invitation/inlanding.dart";
  bool valuefirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: AppBarTitleWidget(),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60.0),
                        topLeft: Radius.circular(60.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1.0, 1.0), //(x,y)
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  height: 750,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Text('Add Details',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              color: kColorPrimary,
                              fontWeight: FontWeight.w600,
                              fontSize: 30)),
                      SizedBox(height: 40),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Title(optional)',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color: kColorPrimary,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20)),
                                SizedBox(height: 15),
                                Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          width: 1.2, color: Colors.black38)),
                                  child: TextField(
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                      color: kColorBlue,
                                    ),
                                    maxLines: 2,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Title',
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                /*Text('Created Date(optional)',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color: kColorPrimary,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20)),
                                SizedBox(height: 15),
                                Container(
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 100,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              border: Border.all(
                                                  width: 1.2,
                                                  color: Colors.black38)),
                                          child: TextField(
                                            keyboardType:
                                            TextInputType.datetime,
                                            style: TextStyle(
                                              color: kColorBlue,
                                            ),
                                            maxLines: 2,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Date',
                                              hintStyle: TextStyle(

                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 50,
                                          width: 100,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              border: Border.all(
                                                  width: 1.2,
                                                  color: Colors.black38)),
                                          child: TextField(
                                            keyboardType:
                                            TextInputType.datetime,
                                            style: TextStyle(
                                              color: kColorBlue,
                                            ),
                                            maxLines: 2,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Month',
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 50,
                                          width: 100,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              border: Border.all(
                                                  width: 1.2,
                                                  color: Colors.black38)),
                                          child: TextField(
                                            keyboardType:
                                            TextInputType.datetime,
                                            style: TextStyle(
                                              color: kColorBlue,
                                            ),
                                            maxLines: 2,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Year',
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),*/
                                SizedBox(height: 15),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Notes(Required)',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontStyle: FontStyle.normal,
                                              color: kColorPrimary,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20)),
                                      FlatButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ViewText()),
                                          );
                                        },
                                        shape: new RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(
                                                    30.0)),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 5),
                                        color: kColorPrimary,
                                        splashColor: kColorPrimary,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'View Text',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ]),
                                SizedBox(height: 15),
                                Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          width: 1.2, color: Colors.black38)),
                                  child: TextField(
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                      color: kColorBlue,
                                    ),
                                    maxLines: 2,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Notes',
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
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
                                            subHeadingText('Save Text')
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 50),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: FlatButton(
                                    onPressed: () {},
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 20),
                                    color: kColorPrimary,
                                    splashColor: kColorPrimary,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Save',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ])),
                    ],
                  ),
                ))));
  }
}
