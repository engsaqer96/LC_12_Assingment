import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:l9_flutter/widgets/CustomButton.dart';
import 'package:l9_flutter/widgets/DropDownList.dart';
import 'package:l9_flutter/widgets/TextField_.dart';

class MershatPage extends StatefulWidget{
  @override
  _MershatPageState createState() => _MershatPageState();
}

class _MershatPageState extends State<MershatPage> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        MyCustomTextField('Name'),
        MyCustomTextField('Password'),
        MyCustomTextField('ShopName'),
        MyCustomTextField('ShopCategory'),
        MyCustomTextField('Bio'),
        CustomDropDawn(),
        Row(children: [CustomElevatedButton(lable: 'home'),CustomElevatedButton(lable:'second')],)],),
    );
  }
}