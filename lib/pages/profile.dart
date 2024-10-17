import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  get primaryColor => Theme.of(context).colorScheme.primary;

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: const Text('Books', style: TextStyle(color: Colors.white),),
        backgroundColor: primaryColor,
      ),

      body: Center(
        child: Text(_value.toString(), style: TextStyle(fontSize: 25, color: Colors.black54),),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              _value++;
            });
          }
      ),

    );
  }
}
