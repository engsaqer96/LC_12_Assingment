import 'package:flutter/material.dart';
import 'package:l9_flutter/Data/Router.dart';
import 'package:l9_flutter/UI/Screens/Customer_.dart';
import 'package:l9_flutter/UI/Screens/ErrorPage.dart';
import 'package:l9_flutter/UI/Screens/HomePage.dart';
import 'package:l9_flutter/widgets/TextField_.dart';
import 'package:l9_flutter/widgets/custom_TextField.dart';

import 'UI/Screens/Merchat_.dart';
import 'UI/Screens/Registration.dart';
import 'UI/Screens/Second_Page.dart';
enum Type{Customer,Mershat}
void main() {
  runApp(Main());
}
class Main extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppRouter.appRouter.navKey,
      routes: {
      '/':(context)=>RegistrationPage(),
      // 'home':(context)=>HomePage(),
      // 'second':(context)=>Second(),
    },
    onGenerateRoute: (RouteSettings routeSettings){
      String name=routeSettings.name;
      var arguments=routeSettings.arguments;
      return MaterialPageRoute(builder: (context){
        if(name=='home'){
          return HomePage(arg:arguments);
        }else if(name=='second'){
          return Second(arg: arguments);
        }else{
          return ErrorPage();
        }
      });
    },
    );
  }

}

