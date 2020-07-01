import 'package:flutter/material.dart';
import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';
import 'Page4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  Widget CallPage(int currentIndex) {
    switch (_currentIndex) {
      case 0:
        return Page1();

      case 1:
        return Page2();

      case 2:
        return Page3();
      case 3:
        return Page4();
        break;
      default:
        return Page1();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Bottom Nav Bar Train"),
      ),
      body: CallPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 50,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home page"),
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            title: Text("Camera"),
            // backgroundColor: Colors.blueAccent
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favoriate page"),
            //backgroundColor: Colors.pink
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            title: Text("Email page"),
            // backgroundColor: Colors.teal
          )
        ],
        onTap: (index) {
          _currentIndex = index;
          setState(() {});
        },
      ),
    ));
  }
}
