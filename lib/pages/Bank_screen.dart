import 'package:flutter/material.dart';
class Bank extends StatelessWidget {
  const Bank({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Банк'), 
       centerTitle: true,
       )
    );
  }
}