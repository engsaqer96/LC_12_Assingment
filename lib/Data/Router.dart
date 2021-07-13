import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter{
  AppRouter._();
  static AppRouter appRouter=AppRouter._();
  GlobalKey<NavigatorState> navKey=GlobalKey<NavigatorState>();
  pushNavigation(Widget widget){
    navKey.currentState.push(MaterialPageRoute(builder: (context){
             return widget;
    }));
  }
  pushNamedNavogation(String routeName){
    navKey.currentState.pushNamed(routeName,arguments: routeName=='home'?'|HomePage|':'|SecondHome|');
  }
}