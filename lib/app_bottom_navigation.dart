import 'package:ebook_shelf/pages/books.dart';
import 'package:ebook_shelf/pages/homepage.dart';
import 'package:ebook_shelf/pages/profile.dart';
import 'package:ebook_shelf/pages/reading.dart';
import 'package:flutter/material.dart';

class AppBottomNavigation extends StatefulWidget {
    const AppBottomNavigation({super.key});
  
    @override
    State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {

    get primaryColor => Theme.of(context).colorScheme.primary;

    int pageIndex = 0;

    List<Widget> bottomNavPages = [
      const HomePage(),
      const Books(),
      const Reading(),
      const Profile(),
    ];



    @override
    Widget build(BuildContext context) {
        return Scaffold(

            // body: IndexedStack(
            //   index: pageIndex,
            //   children: bottomNavPages,
            // ),

            body: bottomNavPages[pageIndex],

            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: primaryColor,
                unselectedItemColor: Colors.white,
                selectedItemColor: Colors.white,
                selectedFontSize: 16,
                currentIndex: pageIndex,
                onTap: (int value){
                  setState(() {
                    pageIndex = value;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home'
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.book_online_outlined),
                      label: 'Books'
                  ),

                  BottomNavigationBarItem(
                      icon: Icon(Icons.remove_red_eye),
                      label: 'Readings'
                  ),

                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_2_rounded),
                      label: 'Profile'
                  ),

                ]
            ),



        );
    }
}
