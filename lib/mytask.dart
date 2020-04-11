import 'package:flutter/material.dart';
import 'package:prototype/profile.dart';
import 'package:prototype/setting.dart';

import 'hiking.dart';
import 'main.dart';

class MyTask extends StatefulWidget {
  @override
  _MyTaskState createState() => _MyTaskState();
}

List<String> exampleList = ["A", "B", "C", "D", "E", "F", "G", "H"];

class _MyTaskState extends State<MyTask> {
  void _signOut() {
    AlertDialog alertDialog = new AlertDialog(
        content: Container(
      height: 100.0,
      child: Column(
        children: <Widget>[
          ClipOval(
            child: new Image.network(""),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Sign Out?",
              style: new TextStyle(fontSize: 16.0, fontFamily: ""),
            ),
          ),
          new Divider(),
          new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: InkWell(
                    
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext content) => new MyHomePage()));
                    },
                    child: Column(children: <Widget>[Text("Yes",style: new TextStyle(color:Colors.white))]),
                  ),
                ),
                Container(
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: InkWell(
                    
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Column(children: <Widget>[Text("Cancel", style: new TextStyle(color:Colors.white),)]),
                  ),
                ),
              ])
        ],
      ),
    ));
    showDialog(context: context, child: alertDialog);
  }

  void _doNothing() {}
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Eco-Tourism'),
          actions: <Widget>[
            Stack(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.notifications_active),
                  iconSize: 30,
                  onPressed: _doNothing,
                ),
                new Positioned(
                    right: 0.0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: Center(
                          child: Text("10",
                              style: new TextStyle(
                                  fontSize: 10.0, color: Colors.white))),
                    ))
              ],
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(children: <Widget>[
            DrawerHeader(
              child: Container(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 60.0,
                          height: 60.0,
                          decoration:BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("img/user.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(75.0)),
                          boxShadow: [
                            BoxShadow(blurRadius: 7.0, color: Colors.black)
                          ])),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyProfile()),
                                );
                              },
                              child: Text(
                                "Tom Cruise",
                                style: new TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorite'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingUser()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sign Out'),
              onTap: () {
                _signOut();
              },
            ),
          ]),
        ),
        body: ListView(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            ),
            Image.asset("img/mount-kinabalu.jpg"),
            new InkWell(
              child: new RaisedButton(
                  elevation: 5.0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.black,
                  child: new Text(
                    "Hiking",
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Hiking()),
                    );
                  }),
            ),
            Image.asset("img/malaysia-best-beaches-mersing.jpg"),
            new InkWell(
              child: new RaisedButton(
                  elevation: 5.0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.black,
                  child: new Text(
                    "Beach",
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyTask()),
                    );
                  }),
            ),
            Image.asset("img/Kuching-Food-Festival-1.jpg"),
            new InkWell(
              child: new RaisedButton(
                  elevation: 5.0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.black,
                  child: new Text(
                    "Food Fest",
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyTask()),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
