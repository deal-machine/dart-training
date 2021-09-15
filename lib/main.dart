import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(title: 'DEAL MACHINE.'));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
            child: Text(
              'Hello world. Clicado: $count',
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.green, fontSize: 50),
            ),
            onTap: () {
              setState(() {
                count++;
              });
            }),
      ),
    );
  }
}
