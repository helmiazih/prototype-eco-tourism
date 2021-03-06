import 'package:flutter/material.dart';



class MyProfile extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyProfile> {
 

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          ClipPath(
            child: Container(color: Colors.black.withOpacity(0.8)),
            clipper: GetClipper(),
          ),
          Positioned(
              width: 350.0,
              top: MediaQuery.of(context).size.height / 5,
              child: Column(
                children: <Widget>[
                  Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("img/user.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(75.0)),
                          boxShadow: [
                            BoxShadow(blurRadius: 7.0, color: Colors.black)
                          ])),
                  SizedBox(height: 50.0),
                  Text(
                    'Tom Cruise',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'San Francisco, CA',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Montserrat'),
                  ),
                  SizedBox(height: 25.0),
                  Container(
                      height: 100.0,
                      width: 100.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      )),
                  SizedBox(height: 25.0),
                
                ],
              ))
        ],
      ),
      appBar: AppBar(
        title: Text('Profile'),
      ),
    );
  }
}

class GetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
   
    return true;
  }
}
