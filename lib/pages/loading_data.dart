import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {

    //get data from Uri object. it is a string.
    // Use jasonDecode to convert into Map object data.
    // Store the data.
    // Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    // Map data = jsonDecode(response.body);
    // print(data);
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London'));
    Map data = jsonDecode(response.body);
    // print(data);

    //get properties from data
    String datetime = data['datetime'];
    String offset = data ['utc_offset'].substring(1,3);
    // print(datetime);
    // print(offset);

    //create datetime objects
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours:int.parse(offset)));
    print(now);
    print('time printed $now');
  }

  @override
  void initState() {
    super.initState();
    print('init State');
    getTime();
  }


  @override
  Widget build(BuildContext context) {
    print("Build widget fired.");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[ 600],
        title: Text('load data'),
        centerTitle: true,
        elevation: 30,
      ),
      body: TextButton(
        style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        onPressed: () {
          setState(() {
            getTime();
          });
        },
        child: Text(
          'Click to load data',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
