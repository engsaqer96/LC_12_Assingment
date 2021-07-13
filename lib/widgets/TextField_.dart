import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class MyCustomTextField extends StatelessWidget{
  String lable;
  MyCustomTextField(this.lable);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
        onSaved: (value){
           // if(lable=='Name')
           //   ;
           // else if(lable=='Password')
           //   ;
           // else if(lable=='ShopName')
           //   ;
           // else if(lable=='ShopCategory')
           //   ;
           // else if(lable=='Bio')
                     },
        validator: (String value){
        if(value.length==0){
          return 'Requerd filed';
        }else if(isEmail(value)){

        }
        },


        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            labelText:lable,
            fillColor: Colors.blue.withOpacity(.2),
            filled: true
        ),
      ),
    );
  }

}