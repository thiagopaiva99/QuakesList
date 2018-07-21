import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'quakes.dart';

void main() async {
  List _quakes = await getQuakes();

  runApp(new MaterialApp(
    title: 'Quakes',
    home: new Quakes(),
  ));
}

Future<List> getQuakes() async {
  String apiUrl = 'https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_day.geojson';
  http.Response response = await http.get(apiUrl);

  return JSON.decode(response.body);
}
