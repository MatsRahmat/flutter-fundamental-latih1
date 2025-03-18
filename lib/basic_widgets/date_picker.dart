import "dart:async";
import "package:flutter/material.dart";

// void main() => runApp(const DatePicker());

class DatePickerPage extends StatelessWidget {
  const DatePickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contoh date picker',
      home: MyHomePage(title: 'Contoh date picker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variable/state untuk mengambil tanggal
  DateTime selectedDate = DateTime.now();

  // initial selecDate flutter
  Future<void> _selectDate(BuildContext context) async {
    // Initial date time Flinal picked
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split('')[0]),
            Text("$selectedDate"),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed:
                  () => {
                    _selectDate(context),
                    print(
                      selectedDate.day + selectedDate.month + selectedDate.year,
                    ),
                  },
              child: const Text('Pilih Tanggal'),
            ),
          ],
        ),
      ),
    );
  }
}
