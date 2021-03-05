/**
 * Author: Sudip Thapa
 * profile: https://github.com/sudeepthapa
 */
import 'package:flutter/material.dart';
import 'package:flutter30days/components/Text%20setting.dart';
import 'package:flutter30days/pages/Detailscreen/Details.dart';
import 'package:flutter30days/utils/constants.dart';

class History extends StatefulWidget {
  History({Key key}) : super(key: key);
  static final String path = "lib/src/pages/lists/list2.dart";

  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final TextStyle dropdownMenuItem =
      TextStyle(color: Colors.black, fontSize: 18);

  final primary = Color(0xff696b9e);
  final secondary = Color(0xfff29a94);

  final List<Map> schoolLists = [
    {
      "name": "Brown Leather Bag",
      "type": "18-9-2020",
    },
    {
      "name": "Brown Leather Bag",
      "type": "18-9-2020",
    },
    {
      "name": "Fastrack 320 Watch",
      "type": "4-3-2020",
    },
    {
      "name": "5kg sugar",
      "type": "21-5-2020",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 135),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Details()),
                    );
                  },
                  child: ListView.builder(
                      itemCount: schoolLists.length,
                      itemBuilder: (BuildContext context, int index) {
                        return buildList(context, index);
                      }),
                )),
            Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xfff0f0f0),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back_sharp),
                          onPressed: () => Navigator.pop(context, false),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        headerText("History"),
                      ]),
                )),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Recently Scanned',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 32)),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget buildList(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 110,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  schoolLists[index]['name'],
                  style: TextStyle(
                      color: kColorPrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.history_rounded,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(schoolLists[index]['type'],
                        style: TextStyle(
                            color: kColorPrimary,
                            fontSize: 13,
                            letterSpacing: .3)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
