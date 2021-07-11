import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:l9_flutter/widgets/CustomButton.dart';
import 'package:l9_flutter/widgets/DropDownList.dart';
import 'package:l9_flutter/widgets/TextField_.dart';

class CustomerPage extends StatefulWidget{
  @override
  _CustomerPageState createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      MyCustomTextField('Name'),
      MyCustomTextField('Password'),
      CustomDropDawn()
    ,CustomElevatedButton()],);

  }
}