import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        themeMode: ThemeMode.dark,
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Première appli'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
            // <cherchez comment appliquer un border radius >
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          child: Column(
            children: [
              TheAmazingRow(),
              SizedBox(height: 16),
              TheAmazingRow(),
              SizedBox(height: 16),
              TheAmazingRow(),
            ],
          ),
        ),
      ),
    );
  }
}

class TheAmazingRow extends StatelessWidget {
  const TheAmazingRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Icon(Icons.wb_sunny),
        SizedBox(width: 16),
        Expanded(child: const Text('Hello Word')),
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () => print('Hallo Welt'),
        ),
      ],
    );
  }
}
