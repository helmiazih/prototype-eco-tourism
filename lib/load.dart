import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:prototype/mytask.dart';

class FlutterSpinkit extends StatefulWidget {
  @override
  _FlutterSpinkitState createState() => _FlutterSpinkitState();
}

class _FlutterSpinkitState extends State<FlutterSpinkit> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyTask()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: Stack(children: <Widget>[
          SpinKitWanderingCubes(color: Colors.blue, shape: BoxShape.circle),
        ]),
      ),
    );
  }
}
