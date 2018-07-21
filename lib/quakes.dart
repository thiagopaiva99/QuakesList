import 'package:flutter/material.dart';

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

            return new ListTile(
              title: new Text(
                "Mag: ${_features[index]['properties']['mag']}",
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
            );
          },
        ),
      ),
    );
  }
}