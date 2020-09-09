import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for the UI
  String time; //The time in the location
  String flag; //url an asset flag icon
  String url; // location url for an api endpoint

  WorldTime({ this.location, this.flag, this.url });

  Future<void> getTime() async {

    try{
      //Make the request
      Response response =  await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      // print(data);

      // get data

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      // print(datetime);
      // print(offset);

      //create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      //set the time property
      // time = now.toString();
      time = DateFormat.jm().format(now);
    }catch(e){
      print('Something went wrong $e');
      time = 'Could not get time data';
    }
  }
}