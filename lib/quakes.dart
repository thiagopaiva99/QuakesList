import 'package:flutter/material.dart';

class Quakes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
            'Quakes'
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
    );
  }
}