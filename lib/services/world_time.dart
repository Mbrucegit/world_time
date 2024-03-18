import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{

  String location; // Location name for UI
  String? time; // The time in that location
  String flag; // url to asset flag
  String url; //url to location for API endpoint
  bool isDaytime = true; //

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      //get data from Uri object. it is a string.
      // Use jasonDecode to convert into Map object data.
      // Store the data.
      // Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
      // Map data = jsonDecode(response.body);
      // print(data);
      Response response = await get(
          Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      // print(data);

      //get properties from data
      String datetime = data['datetime'];
      String offset = data ['utc_offset'].substring(1, 3);
      // print(datetime);
      // print(offset);

      //create datetime objects
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDaytime = now.hour > 6 && now.hour< 20 ? true : false;


      time = DateFormat.jm().format(now);
      // Set the time property
      // time = now.toString();
      //TODO delete the print command below.
      // print(now);
      // print('time printed $now');
    }
    catch (e) {
      print('caught error: $e');
      time = 'Could not get an error';
    }
    }

}
