import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void setupWorldTime () async{
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url:'Europe/Berlin');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
    print('init State on loading finished');

  }


  @override
  Widget build(BuildContext context) {
    print("Build widget fired.");
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('Loading'),
      ),
    );
  }
}
