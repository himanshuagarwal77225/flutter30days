/**
 * Author: Sudip Thapa
 * profile: https://github.com/sudeepthapa
 */
import 'package:flutter/material.dart';
import 'package:flutter30days/pages/Detailsadd/detailsadd.dart';
import 'package:flutter30days/utils/constants.dart';

class Details extends StatelessWidget {
  static final String path = "lib/src/pages/profile/profile7.dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Details',
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 32)),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddDetails()),
                    );
                  },
                  icon: Icon(
                    Icons.edit,
                    color: kColorPrimary,
                  ),
                )
              ],
            ),
          ],
        ),
        backgroundColor: Color(0xfff0f0f0),
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: <Widget>[
                Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      shape: BoxShape.circle,
                    ),
                    margin: EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/qr.png',
                      ),
                      radius: 5,
                      backgroundColor: Colors.black,
                    )),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Text(
                  "1Kg Sugar",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      color: kColorPrimary,
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      height: 1.5),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                ),
                Text(
                  "15-8-2020",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      color: kColorPrimary,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      height: 1.5),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Card(
                      color: Colors.white,
                      child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                              'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Table sugar, granulated sugar, or regular sugar, refers to sucrose, a disaccharide composed of glucose and fructose.',
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18,
                                  height: 2)))),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 55),
                  child: Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Theme.of(context).dividerColor,
                          blurRadius: 8,
                          offset: Offset(4, 4),
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        highlightColor: Colors.transparent,
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              color: Color(0xFFe84c0f),
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              'Save',
                              style: Theme.of(context)
                                  .textTheme
                                  .subhead
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
