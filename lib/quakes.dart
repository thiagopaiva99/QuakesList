import 'package:flutter/material.dart';

class Quakes extends StatelessWidget {
  Map _data;

  Quakes(_data) {
    this._data = _data;
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
          itemCount: this._data['features'].length,
          padding: const EdgeInsets.all(15.0),
          itemBuilder: (BuildContext context, int position) {
            return new ListTile(
              title: new Text(
                "${_data['features'][position]['properties']['place']}"
              ),
            );
          },
        ),
      ),
    );
  }
}