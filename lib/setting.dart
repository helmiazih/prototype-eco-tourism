
import 'package:flutter/material.dart';

import 'AccountSetting.dart';
import 'HelpSupport.dart';
import 'notification.dart';



class SettingUser extends StatelessWidget{
  //static final String path = "li"
  @override
  Widget build (BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                
                child: Card(
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.blueAccent,
                  child: ListTile(
                    onTap: (){

                    },
                    title: Text('Tom Cruise'),
                    leading: CircleAvatar(backgroundColor: Colors.white),
                    trailing: Icon(Icons.edit),
                    
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
             
              Card(
                elevation: 8.0,
               // margin: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                color: Colors.grey[200],
                child: Column(
                  
                  children: <Widget>[

                    ListTile(
                      leading: Icon(Icons.collections_bookmark, color: Colors.blueAccent),
                      onTap: (){

                      },
                      title:  Text('Favorite'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      
                    ),
                    _buildDivider(),
                    
                    ListTile(
                      leading: Icon(Icons.vpn_key, color: Colors.blueAccent),
                      onTap: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AccountSetting()),
                          );
                      },
                      title:  Text('Account'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      
                    ),
                    _buildDivider(),

                    ListTile(
                      leading: Icon(Icons.notifications, color: Colors.blueAccent),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NotificationSetting()),
                          );
                      },
                      title:  Text('Notification'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                    _buildDivider(),

                    ListTile(
                      leading: Icon(Icons.help_outline, color: Colors.blueAccent),
                      onTap: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HelpSupport()),
                          );
                      },
                      title:  Text('Help and Support'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                    _buildDivider(),
                  ]
                ),

              )
              

            ],
            )
        ), 
      );
    
  }

  Container _buildDivider() {
    return Container(
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey.shade400,);
  }
}