import 'package:flutter/material.dart';

import 'second_screen.dart';
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  void navigateToSecondScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const SecondScreen();
        },
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Main page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  navigateToSecondScreen();
                },
                child: const Text('Navigate to second screen'),
              ),
              ElevatedButton(
                onPressed: () {
                  navigateToSecondScreen();
                },
                child: const Text('Navigate to second screen'),
              ),
              ElevatedButton(
                onPressed: () {
                  navigateToSecondScreen();
                },
                child: const Text('Navigate to second screen'),
              ),
            ],
          )
        ],
      ),
    );
  }
}