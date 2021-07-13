import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:l9_flutter/Data/DamyData.dart';

class CustomDropDawn extends StatefulWidget{
  @override
  _CustomDropDawnState createState() => _CustomDropDawnState();
}

class _CustomDropDawnState extends State<CustomDropDawn> {
  String currentCategory='sport';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.indigo),
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue.withOpacity(.2)
        

      ),
      child: DropdownButton<String>(
        isExpanded: true,
          value: currentCategory,
        onChanged: (v){
        currentCategory=v;
        setState(() {});
        },
        items:MockData.mockData.getCategories().map((e){
          return DropdownMenuItem(child: Text(e),
          value: e,);
        }).toList()
      ),
    );


  }
}