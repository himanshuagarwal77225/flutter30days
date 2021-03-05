import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter30days/pages/Backup/circular%20indicator.dart';
import 'package:flutter30days/pages/Detailsadd/detailsadd.dart';
import 'package:flutter30days/pages/History/historyscreen.dart';
import 'package:flutter30days/pages/contact/Contact.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../routes/routes.dart';
import '../../utils/constants.dart';
import '../drawer/drawer_page.dart';
import 'Qrhome.dart';
import 'widgets/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey _titleKey = GlobalKey();
  final GlobalKey _firstButtonKey = GlobalKey();

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  int _selectedIndex = 0;

  static PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _selectedIndex,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _selectPage(int index) {
    if (_pageController.hasClients) _pageController.jumpToPage(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _pages = [
      QRViewExample(),
      History(),
    ];
    return Stack(
      children: <Widget>[
        DrawerPage(
          onTap: () {
            setState(
              () {
                xOffset = 0;
                yOffset = 0;
                scaleFactor = 1;
                isDrawerOpen = false;
              },
            );
          },
        ),
        AnimatedContainer(
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor)
            ..rotateY(isDrawerOpen ? -0.5 : 0),
          duration: Duration(milliseconds: 250),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0),
            child: Scaffold(
              backgroundColor: Colors.white70,
              appBar: AppBar(
                leading: isDrawerOpen
                    ? IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        iconSize: 40,
                        onPressed: () {
                          setState(
                            () {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFactor = 1;
                              isDrawerOpen = false;
                            },
                          );
                        },
                      )
                    : IconButton(
                        icon: Icon(Icons.menu),
                        key: _titleKey,
                        onPressed: () {
                          setState(() {
                            xOffset = size.width - size.width / 3;
                            yOffset = size.height * 0.1;
                            scaleFactor = 0.8;
                            isDrawerOpen = true;
                          });
                        },
                      ),
                title: AppBarTitleWidget(),
                actions: <Widget>[
                  _selectedIndex == 2
                      ? IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(Routes.message);
                          },
                          icon: Icon(
                            Icons.add,
                          ),
                        )
                      : IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Contact()),
                            );
                          },
                          icon: Icon(
                            Icons.help_outline,
                          ),
                        ),
                ],
              ),
              body: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                children: _pages,
              ),
              floatingActionButton: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0x202e83f8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0x202e83f8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddDetails()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(colors: [
                                Color(0xFFc2c2c2),
                                Color(0xFFFFFFFF),
                              ])),
                          child: Icon(
                            Icons.home_sharp,
                            size: 34,
                            key: _firstButtonKey,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: Container(
                height: 100,
                child: BottomAppBar(
                  color: Colors.white,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: NavBarItemWidget(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Backup()),
                            );
                          },
                          iconData: Icons.backup_sharp,
                          text: 'Backup'.tr(),
                          color: _selectedIndex == 0
                              ? Colors.deepOrangeAccent
                              : Colors.grey,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 1,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: NavBarItemWidget(
                          onTap: () {
                            _selectPage(3);
                          },
                          iconData: Icons.history,
                          text: 'History'.tr(),
                          color: _selectedIndex == 3
                              ? Colors.deepOrangeAccent
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget get bottomNavigationBar {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: NavBarItemWidget(
              onTap: () {
                _selectPage(0);
              },
              iconData: Icons.home,
              text: 'home'.tr(),
              color: _selectedIndex == 0 ? kColorBlue : Colors.grey,
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 1,
            ),
          ),
          Expanded(
            flex: 1,
            child: NavBarItemWidget(
              onTap: () {
                _selectPage(3);
              },
              iconData: Icons.settings,
              text: 'settings'.tr(),
              color: _selectedIndex == 3 ? kColorBlue : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

_onAlertWithCustomContentPress(context) {
  Alert(
      context: context,
      image: Image(
        image: AssetImage('assets/images/Coming soon.gif'),
      ),
      title: "Coming Soon",
      content: Column(
        children: <Widget>[],
      ),
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          color: kColorPrimary,
          child: Text(
            "Okay",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ]).show();
}
