import 'package:flutter/material.dart';

import 'staggered_layout_example.dart';
import 'wrap_layout_example.dart';

void main() {
  runApp(const MyApp());
}

/// Main example
class MyApp extends StatelessWidget {
  /// Main example constructor.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const WrapExample(),
                ),
              ),
              child: const Text('Wrap Demo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const StaggeredExample(),
                ),
              ),
              child: const Text('Staggered Demo'),
            ),
          ],
        ),
      ),
    );
  }
}
