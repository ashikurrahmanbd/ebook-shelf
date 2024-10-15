import 'package:ebook_shelf/pages/homepage.dart';
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

        title: Text('Readings', style: TextStyle(color: Colors.white),),
        backgroundColor: primaryColor,
      ),

      body: Center(
        child: Text('Reading Page'),
      ),
    );
  }
}
