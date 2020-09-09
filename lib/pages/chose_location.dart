import 'package:flutter/material.dart';

class ChoseLocation extends StatefulWidget {
  @override
  _ChoseLocationState createState() => _ChoseLocationState();
}

class _ChoseLocationState extends State<ChoseLocation> {

  void getData() async {
    //simulate network request for username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Anower';
    });
    //simulate network request for address
    String address = await Future.delayed(Duration(seconds: 2), () {
      return 'Soulmaid, Dhaka';
    });
    print('$username - $address');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('Hei its first load');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Chose a Location'),
        centerTitle: true,
        elevation: 0,
      ),

    );
  }
}
