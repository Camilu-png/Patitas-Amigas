import 'package:flutter/material.dart';
import 'description_place.dart';
import 'godparent.dart';
import 'package:flutter/services.dart';
import 'header_appbar.dart';

class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xff77d6ce,
    const <int, Color>{
      50: const Color(0xff6bc1b9),//10%
      100: const Color(0xff5faba5),//20%
      200: const Color(0xff539690),//30%
      300: const Color(0xff47807c),//40%
      400: const Color(0xff3c6b67),//50%
      500: const Color(0xff305652),//60%
      600: const Color(0xff24403e),//70%
      700: const Color(0xff182b29),//80%
      800: const Color(0xff0c1515),//90%
      900: const Color(0xff000000),//100%
    },
  );
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
            statusBarColor: Colors.transparent
          //color set to transperent or set your own color
        )
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Palette.kToDark,
      ),
      home: Scaffold(
          resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              DescriptionPlace(),
              GodParent("android/assets/img/perfil.jpg", "Camila Arancibia"),
            ]
        ),
            HeaderAppBar()
          ],
        )
      )
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
