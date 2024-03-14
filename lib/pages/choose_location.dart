import 'dart:ffi';

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState function ran;');
  }


  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue[ 600],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 30,
      ),
      body: TextButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text(
            'Click on $counter',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
            ),



        ),
      ),
    );
  }
}
