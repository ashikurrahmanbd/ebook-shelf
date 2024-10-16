import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  get primaryColor => Theme.of(context).colorScheme.primary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: const Text('Books', style: TextStyle(color: Colors.white),),
        backgroundColor: primaryColor,
      ),

      body: const Center(
        child: Text('Profile Page'),
      ),
    );
  }
}
