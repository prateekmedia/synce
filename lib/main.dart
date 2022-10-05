import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Synce',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFFFDB731,
          {
            50: Color.fromRGBO(253, 183, 49, .1),
            100: Color.fromRGBO(253, 183, 49, .2),
            200: Color.fromRGBO(253, 183, 49, .3),
            300: Color.fromRGBO(253, 183, 49, .4),
            400: Color.fromRGBO(253, 183, 49, .5),
            500: Color.fromRGBO(253, 183, 49, .6),
            600: Color.fromRGBO(253, 183, 49, .7),
            700: Color.fromRGBO(253, 183, 49, .8),
            800: Color.fromRGBO(253, 183, 49, .9),
            900: Color.fromRGBO(253, 183, 49, 1),
          },
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Synce'),
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
        centerTitle: true,
        elevation: 2,
        title: Text(
          widget.title,
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Start syncing by adding a device using the add button",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text("OR"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Share files without syncing"),
              ),
            ],
          ),
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
