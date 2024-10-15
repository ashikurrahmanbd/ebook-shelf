import 'package:ebook_shelf/app_bottom_navigation.dart';
import 'package:ebook_shelf/pages/books.dart';
import 'package:ebook_shelf/pages/homepage.dart';
import 'package:ebook_shelf/pages/profile.dart';
import 'package:ebook_shelf/pages/reading.dart';
import 'package:ebook_shelf/pages/single_book.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple.shade300,),
        fontFamily: 'ebookShelfFont',
        textTheme: TextTheme(
          bodySmall: TextStyle(fontSize: 10, color: Color(0xFF485460)),
          bodyMedium: TextStyle(fontSize: 14, color: Color(0xFF485460)),
          bodyLarge: TextStyle(fontSize: 16, color: Color(0xFF485460)),
          headlineSmall: TextStyle(fontSize: 20, color: Color(0xFF485460)),
          headlineMedium: TextStyle(fontSize: 22, color: Color(0xFF485460)),
          headlineLarge: TextStyle(fontSize: 24, color: Color(0xFF485460)),
        ),
        extensions: [
          MyAppTheme(
            primaryGradientColor : LinearGradient(
                colors: [Colors.deepPurple.shade300, Colors.deepPurple.shade700],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
            ),


          )
        ],
        useMaterial3: true,
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => AppBottomNavigation(),
        '/books' : (context) => Books(),
        '/readings' : (context) => Reading(),
        '/profile' : (context) => Profile(),
        '/singlebook' : (context) => SingleBook(),

      },
    );
  }
}


class MyAppTheme extends ThemeExtension<MyAppTheme>{

    final LinearGradient primaryGradientColor;
    MyAppTheme({required this.primaryGradientColor});

    @override
    MyAppTheme copyWith({LinearGradient? thirdColor}) {
      return MyAppTheme(
        primaryGradientColor: thirdColor ?? this.primaryGradientColor,
      );
    }

    @override
    MyAppTheme lerp(ThemeExtension<MyAppTheme>? other, double t) {
      if (other is! MyAppTheme) return this;
      return MyAppTheme(
        primaryGradientColor: LinearGradient.lerp(primaryGradientColor, other.primaryGradientColor, t)!,
      );
    }





}