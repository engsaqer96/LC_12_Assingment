import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget{
  String arg;
  Second({this.arg});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            margin:EdgeInsets.all(20)
            ,child:
        Column(
          children: [ Center(
            child: Text(arg),
          ),
            Center(
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).pop("Hello form Second page");
              },
                child: Text('Logout'),),
            )],)
        ),
      ),
    );
  }

}