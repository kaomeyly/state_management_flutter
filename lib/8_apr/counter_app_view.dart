import 'package:flutter/material.dart';

class CounterAppView extends StatelessWidget {
  const CounterAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter View")),
      body: Column(
        children: [
          Center(child: Text("Counter : 0")),
          SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: Text("Increment")),
          ElevatedButton(onPressed: () {}, child: Text("Decrement")),
        ],
      ),
    );
  }
}
