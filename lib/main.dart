import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
              setState(() {
                buttonTitle = 'Button clicked';
              });
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
