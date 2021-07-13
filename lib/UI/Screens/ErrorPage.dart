import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Error Page'),),
      body: Center(child: Hero(child: Text('404'),),),
    );
  }

}