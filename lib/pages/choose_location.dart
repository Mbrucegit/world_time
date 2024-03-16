import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async{

    //simulate network request
    //add await to complete the function before the next line of code
    String username = await Future.delayed(Duration(seconds: 3), (){
      return 'Yoshi';
    });

    await Future.delayed(Duration(seconds: 3), (){
      print('username is $username');
      print('Statement');
    });
  }
  // int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('init function ran');
    getData();
  }


  @override
  Widget build(BuildContext context) {
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
            getData();
          });
        },
        child: Text(
            'Click to add counter',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
