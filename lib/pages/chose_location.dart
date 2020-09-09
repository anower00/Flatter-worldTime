import 'package:flutter/material.dart';

class ChoseLocation extends StatefulWidget {
  @override
  _ChoseLocationState createState() => _ChoseLocationState();
}

class _ChoseLocationState extends State<ChoseLocation> {

  int count = 0;

  @override
  void initState() {
    super.initState();
    print('Init ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Chose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            count += 1;
          });
        },
        child: Text('Count is $count'),
      ),
    );
  }
}
