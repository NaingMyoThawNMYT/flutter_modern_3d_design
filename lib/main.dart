import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter modern 3D design',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[600],
                // shadow direction (vertical axis, horizontal axis)
                offset: Offset(4.0, 4.0),
                // make blur effect to elevation
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
            ],
            gradient: LinearGradient(
              // begin point
              begin: Alignment.topLeft,
              // end point
              end: Alignment.bottomRight,
              colors: [
                Colors.grey[200],
                Colors.grey[300],
                Colors.grey[400],
                Colors.grey[500],
              ],
              stops: [
                0.1,
                0.3,
                0.8,
                1,
              ],
            ),
          ),
          child: Icon(
            Icons.android,
            size: 60,
            color: Colors.grey[800],
          ),
        ),
      ),
    );
  }
}
