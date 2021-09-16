import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(16.0)),
      // boxShadow: [
      //  BoxShadow(color: Colors.blue.withOpacity(0.4),
      //  offset: const Offset(4.0,4.0),
      //   blurRadius:6.0,
      //   ),
      // ],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.home),
          Text("meu container"),
          Icon(Icons.home),
        ],
      ),
    );
  }
}
