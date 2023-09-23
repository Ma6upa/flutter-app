import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String buttonTitle = 'Click me';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Appbar'),
        ),
        body: Center (child: 
          ElevatedButton(
            onPressed: () {
              print(buttonTitle);
            }, 
            child: Text(buttonTitle),
          )
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings)
          )
        ]),
      ),
    );
  }
}
