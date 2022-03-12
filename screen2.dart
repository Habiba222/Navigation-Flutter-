import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen1.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  void selectScreen(
    BuildContext ctx,
  ) {
    Navigator.of(ctx).pushReplacement(
      MaterialPageRoute(builder: (_) {
        return Screen1();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen2'),
      ),
      body: Center(
        child: InkWell(
          child: const Text(
            'GO TO SCREEN 1',
            style: TextStyle(fontSize: 30),
          ),
          onTap: () => selectScreen(context),
        ),
      ),
    );
  }
}
