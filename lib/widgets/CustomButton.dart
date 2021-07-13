import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:l9_flutter/Data/Router.dart';
import 'package:l9_flutter/UI/Screens/HomePage.dart';
import 'package:l9_flutter/UI/Screens/Second_Page.dart';

class CustomElevatedButton extends StatelessWidget{
  String lable;
  CustomElevatedButton({this.lable});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () async{
          AppRouter.appRouter.pushNamedNavogation(lable=='home'?'home':'second');
          // var s= await Navigator.of(context).pushNamed(lable=='home'?'home':'second'
          //     ,arguments: lable=='home'?'|HomePage|':'|SecondHome|'
          // );
          // print(s);
          },
        child: Text(lable),
      ),
    );
  }

}