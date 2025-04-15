import 'package:flutter/material.dart';
import 'package:helloworld/basic_widgets/dailog_widget.dart';
// import 'package:helloworld/basic_widgets/date_picker.dart';
// import 'package:helloworld/basic_widgets/scaffold_widget.dart';
// import 'package:helloworld/basic_widgets/input_select_widget.dart';
// import 'package:helloworld/basic_widgets/floating_action_button.dart';
// import 'package:helloworld/basic_widgets/loading_cupertino.dart';
// import 'basic_widgets/text_widget.dart';
// import 'basic_widgets/image_widget.dart';

void main() {
  runApp(const MyApp()); // Class pada file ini
  // runApp(const DatePickerPage()); // Halaman date picker
  // runApp(ScaffoldWidgetPage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'Rahmat Hidayat'),
      home: Scaffold(body: MyLayoutDialog()),
      // home: const MyInputWidget(),
      // home: const DatePi,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const MyTextWidget(),
            // const MyInputWidget(),
            // const ImageWidget(),
            // const LoadingCupertino(),
            // const LatihanFloatingButton(),
            // const Text('Rahmat Hidayat', style: TextStyle(fontSize: 50)),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(child: Container(height: 50.0)),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation
              .centerDocked, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
