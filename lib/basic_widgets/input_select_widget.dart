import "package:flutter/material.dart";

class MyInputWidget extends StatelessWidget {
  const MyInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Contoh text field')),
        body: const TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Nama  ',
          ),
        ),
      ),
    );
  }
}
