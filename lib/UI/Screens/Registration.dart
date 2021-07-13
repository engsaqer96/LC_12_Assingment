import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import 'Customer_.dart';
import 'Merchat_.dart';
enum UserType{Customer,Mershat}

class RegistrationPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<RegistrationPage> {
  String email;
  bool visb=false;
  String password;
  UserType typeValue=UserType.Customer;


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
                            value: UserType.Customer,
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
                            value: UserType.Mershat,
                            groupValue: typeValue,
                            onChanged: (v)
                            {this.typeValue=v;
                            setState(() {
                            });
                            },

                          ),
                        ),],)
                  ),
                  Expanded(
                    flex: 2,
                    child: typeValue==UserType.Mershat?
                    MershatPage():CustomerPage(),
                  ),
                ]))

    );

  }
}

