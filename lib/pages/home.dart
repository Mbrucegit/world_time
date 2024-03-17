import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};


  @override
  Widget build(BuildContext context) {
    data = ModalRoute
        .of(context)!
        .settings
        .arguments as Map;
    print(data);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: Column(
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                child: Text(
                  'Home',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 36.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],


              )
            ],
          ),
        ),
      ),
    );
  }
}
