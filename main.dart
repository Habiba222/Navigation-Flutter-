import 'package:flutter/material.dart';
import 'package:flutter_application_2/sceen2.dart';
import 'package:flutter_application_2/screen1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/e1': (context) => Screen1(),
        '/e2': (context) => Screen2(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  void selectScreen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushNamed(n == 1 ? '/e1' : '/e2');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('the main page'),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              child: const Text(
                'GO TO SCREEN 1',
                style: TextStyle(fontSize: 30),
              ),
              onTap: () => selectScreen(context, 1),
            ),
            InkWell(
              child: const Text(
                'GO TO SCREEN 2',
                style: TextStyle(fontSize: 30),
              ),
              onTap: () => selectScreen(context, 2),
            ),
          ],
        ),
      ),
    );
  }
}
