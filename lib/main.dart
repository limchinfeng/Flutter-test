import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My first app',
            style: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
          ),
          backgroundColor: Color(0xFF151026),
          centerTitle: true,
        ),
        body: Center(
          child: NetworkImage()
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text(
            "click",
            style: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
          ),
          backgroundColor: Colors.red[600],
        ),
      );
  }
}