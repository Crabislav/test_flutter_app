import 'package:flutter/material.dart';
import 'package:test_flutter_app/colorGenerator.dart';

void main() => runApp(TestApp());

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color containerColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          containerColor = getRandomColor();
        });
      },
      child: Container(
        color: containerColor,
        child: Center(
          child: Text(
            'Hey there',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ),
    );
  }
}
