import 'package:flutter/material.dart';
import 'package:training_dart/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;
  bool turnTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Center(
        child: Switch(
            value: AppController.instance.isDarkTheme,
            onChanged: (value) {
              AppController.instance.changeTheme();
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          count++;
        }),
        child: Icon(Icons.add_outlined),
        backgroundColor: (Colors.amber),
      ),
    );
  }
}
