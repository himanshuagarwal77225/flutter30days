 import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
 import 'package:url_launcher/url_launcher.dart';



class QRViewExample extends StatefulWidget {
  const QRViewExample({
    Key key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  var qrText = '';

  QRViewController controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Stack(
                children: <Widget>[QRView(
                  key: qrKey,
                  onQRViewCreated: _onQRViewCreated,
                  overlay: QrScannerOverlayShape(
                    borderColor: Colors.red,
                    borderRadius: 10,
                    borderLength: 30,
                    borderWidth: 10,
                    cutOutSize: 300,
                  ),
                ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).padding.horizontal+130,vertical: 50),
                    child:Container(
                    height: 60,width: 210,alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(24.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(4, 4),
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        highlightColor: Colors.transparent,
                        onTap: () => _launchURL(),
                        child:Container(decoration: BoxDecoration(
                            color:Color(0xFFe84c0f),
                            borderRadius: BorderRadius.circular(15)
                        ),
                          child: Center(
                            child: Text(
                              'Get Stickers',
                              style: Theme.of(context).textTheme.subhead.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),),
                    ),
                  ),
                  ) ])
          ),




            ],
              ),

    );
  }



  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        qrText = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
 _launchURL() async {
   const url = 'https://www.amazon.com/';
   if (await canLaunch(url)) {
     await launch(url);
   } else {
     throw 'Could not launch $url';
   }
 }