import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter == 0) {
        _counter;
      } else {
        _count = _counter;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Count:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () => setState(() {
                  _counter = 0;
                }),
                child: const Text("Reset", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold)),
        ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () => setState(() {
                  _counter = _count;
                }),
                child: const Text("Undo Reset", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold)),
        ),
            ),
            ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
