import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Рейтинг'), 
       centerTitle: true,
       )
    );
  }
}