import "package:flutter/material.dart";

class MyLayoutDialog extends StatelessWidget {
  const MyLayoutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          showAlertDialog(context);
        },
        child: const Text('SHow alert'),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // Setup button
    Widget okButton = TextButton(
      child: const Text('OK'),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // Setup alertDialog
    AlertDialog alert = AlertDialog(
      title: const Text('My title'),
      content: const Text('This is message'),
      actions: [
        okButton, // Menggunakan button yg telah di buat sebelum nya di atas
      ],
    );

    //Show the dialog
    showDialog(
      context: context,
      builder: (BuildContext contex) {
        return alert;
      },
    );
  }
}
