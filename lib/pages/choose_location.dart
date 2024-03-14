import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;
  void getData() async {
    //simulate network request for a user name
    String username = await Future.delayed(const Duration(seconds: 1),(){
      print('username function');
      return 'Yoshi';
    });

    //simulate network request for the bio of user name
    await Future.delayed(const Duration(seconds: 2), (){
        return 'A second has passed for $username';
    });
    print('$username');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState function ran;');
    getData();
    print('initState function ran2;');

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
