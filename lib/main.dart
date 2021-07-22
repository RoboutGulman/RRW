import 'package:flutter/material.dart';
import 'package:flutter_application_1/nav.dart';
void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Железнодорожные войны';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Nav(),
    );
  }
}

