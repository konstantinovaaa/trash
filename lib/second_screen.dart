import 'package:flutter/material.dart';
 
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Second screen'),
      ),
    );
  }
}
 