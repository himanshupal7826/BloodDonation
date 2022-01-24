import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Selectionscreen extends StatefulWidget {
  @override
  _SelectionscreenState createState() => _SelectionscreenState();
}

class _SelectionscreenState extends State<Selectionscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(25),
              child: ElevatedButton(
                child: Text(
                  'Be a Donor',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ),
            ElevatedButton(
              child: Text('Contact a Donor'),
              onPressed: () {
                //   Navigator.pushNamed(context, '/second');
              },
            ),
          ],
        ),
      ),
    );
  }
}
