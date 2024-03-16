import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  // int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState fired.');
  }


  @override
  Widget build(BuildContext context) {
    print('build function ran');
    print('state changed');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[ 600],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 30,
      ),
      body: TextButton(
        style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        onPressed: () {
          setState(() {
            // counter += 1;
          });
        },
        child: Text(
            'Click to add counter \{$counter}',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
