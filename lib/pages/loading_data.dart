import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {
    Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    print(response.body);
  }

  @override
  void initState() {
    // getData();
  }


  @override
  Widget build(BuildContext context) {
    print("Build widget fired.");
    return Scaffold(
      body: SafeArea(
          child:Text('Loading Data Page')
      ),
      );
  }
}
