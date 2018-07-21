import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Quakes extends StatelessWidget {
  List _features;

  Quakes(_data) {
    this._features = _data['features'];
  }

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
      body: new Center(
        child: new ListView.builder(
          itemCount: this._features.length,
          padding: const EdgeInsets.all(15.0),
          itemBuilder: (BuildContext context, int position) {
            if (position.isOdd) return new Divider();

            final index = position ~/ 2;

            var format = new DateFormat("dd/MM/yyyy HH:mm");
            var date = format.format(new DateTime.fromMicrosecondsSinceEpoch(_features[index]['properties']['time'] * 1000, isUtc: true));

            return new ListTile(
              title: new Text(
                "At: $date",
                style: new TextStyle(
                  fontSize: 14.5,
                  color: Colors.orange,
                  fontWeight: FontWeight.w500
                ),
              ),
              subtitle: new Text(
                "${_features[index]['properties']['place']}",
                style: new TextStyle(
                  fontSize: 14.5,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic
                ),
              ),
              leading: new CircleAvatar(
                backgroundColor: Colors.red,
                child: new Text(
                  "${_features[index]['properties']['mag']}",
                  style: new TextStyle(
                    fontSize: 16.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}