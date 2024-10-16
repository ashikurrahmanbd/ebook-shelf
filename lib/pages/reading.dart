import 'package:flutter/material.dart';

class Reading extends StatefulWidget {
  const Reading({super.key});

  @override
  State<Reading> createState() => _ReadingState();
}

class _ReadingState extends State<Reading> {

  get primaryColor => Theme.of(context).colorScheme.primary;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(

        title: const Text('Readings', style: TextStyle(color: Colors.white),),
        backgroundColor: primaryColor,
      ),

      body: const Center(
        child: Text('Reading Page'),
      ),
    );
  }
}
