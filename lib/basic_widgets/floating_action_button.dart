import "package:flutter/material.dart";

class LatihanFloatingButton extends StatelessWidget {
  final VoidCallbackAction handleAction;
  const LatihanFloatingButton({super.key, required this.handleAction});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: handleAction,
          backgroundColor: Colors.pink,
          child: const Icon(Icons.thumb_up),
        ),
      ),
    );
  }
}
