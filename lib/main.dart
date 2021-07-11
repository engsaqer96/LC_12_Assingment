import 'package:flutter/material.dart';
import 'package:l9_flutter/UI/Screens/Customer_.dart';
import 'package:l9_flutter/widgets/TextField_.dart';
import 'package:l9_flutter/widgets/custom_TextField.dart';

import 'UI/Screens/Merchat_.dart';
enum Type{Customer,Mershat}
void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String email;
  bool visb=false;
  String password;
  Type typeValue=Type.Customer;


  setEmail(String email){this.email=email;}

  setPassword(String password){this.password=password;}

  GlobalKey<FormState> formKey=GlobalKey<FormState>();

  save(){
    formKey.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title:Text('MyApp'),),
     body: Form(
       key: formKey,
       child: Column(
         children: [
       Container(
       margin: EdgeInsets.all(20),
    child: Row(children: [
      Expanded(
        child: RadioListTile(
        title: Text('Customer'),
        value: Type.Customer,
        groupValue: typeValue,
        onChanged: (v){this.typeValue=v;
        visb=false;
        setState(() {
        });
        },

    ),
      ),
      Expanded(
        child: RadioListTile(
        title: Text('Mershat'),
        value: Type.Mershat,
        groupValue: typeValue,
        onChanged: (v){this.typeValue=v;
        setState(() {
        });
        },

    ),
      ),],)
    ),
           Expanded(
             flex: 2,
             child: typeValue==Type.Mershat?
             MershatPage():CustomerPage(),
           ),
  ]))

   );

  }
}
