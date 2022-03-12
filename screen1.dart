import 'package:flutter/material.dart';
import 'package:flutter_application_2/sceen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  void selectScreen(
    BuildContext ctx,
  ) {
    Navigator.of(ctx).pushReplacement(
      // builder: (_) means i know i can use a context here for the builder but i don't want to use it now 
      MaterialPageRoute(builder: (_) {
        return Screen2();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen1 '),
      ),
      body: Center(
        child: InkWell(
          child: Text(
            'GO TO SCREEN 2',
            style: TextStyle(fontSize: 30),
          ),
          onTap: () => selectScreen(context),
        ),
      ),
    );
  }
}
