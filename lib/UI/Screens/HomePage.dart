import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  String arg;
  HomePage({this.arg='Home Page'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Container(
            margin:EdgeInsets.symmetric(vertical:50,horizontal: 20 )
            ,child:
          Column(
            children: [ Center(
              child: Text(arg),
            ),
            Center(
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).pop("Hello form home page");
              },
              child: Text('Logout'),),
            )],)
        ),

    );
  }

}