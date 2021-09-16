import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Use academy'),
            centerTitle: true,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Icon(Icons.book),
              ),
            ],
          ),
          drawer: Drawer(
            child: Column(),
          ),
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.grey[200],
              onTap: (value) => debugPrint(value.toString()),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'inicio',
                  activeIcon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: 'Perfil',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined),
                  label: 'Sacola',
                ),
              ]),
          body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyContainer(),
                  MyContainer(),
                  MyContainer(),
                ]),
          )),
    );
  }
}
