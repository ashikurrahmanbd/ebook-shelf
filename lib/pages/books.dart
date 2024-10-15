import 'package:ebook_shelf/appcolors.dart';
import 'package:ebook_shelf/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {

  get primaryColor => Theme.of(context).colorScheme.primary;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(

        title: Text('Books', style: TextStyle(color: Colors.white),),
        backgroundColor: primaryColor,
      ),

      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          
          children: [
            // First Columns start (trending book)
            TextField(
              decoration: InputDecoration(
                hintText: 'Search Book...',
                hintStyle: TextStyle( color: Colors.grey),
                filled: true,
                fillColor: Color(0xFFECECEC),
                suffixIcon: Icon(Icons.search),
                suffixIconColor: Colors.grey,
        
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(100),
        
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        
              ),
            ),
        
            SizedBox(height: 15,),
        
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
        
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(

                      flex: 18,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ElevatedButton(
                                onPressed: (){

                                },
                                child: Text('All', style: TextStyle(color: Colors.white),),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(AppPrimaryColor.appPrimaryColor),
                                ),
                            ),
                            SizedBox(width: 8,),
                            ElevatedButton(
                                onPressed: (){

                                },
                                child: Text('Bangla')
                            ),

                            SizedBox(width: 8,),
                            ElevatedButton(
                                onPressed: (){

                                },
                                child: Text('English')
                            ),

                            SizedBox(width: 8,),
                            ElevatedButton(
                                onPressed: (){

                                },
                                child: Text('Hindi')
                            ),

                            SizedBox(width: 8,),
                            ElevatedButton(
                                onPressed: (){

                                },
                                child: Text('Urdu')
                            ),


                          ],
                        ),
                      ),

                  ),
        
                  //Expanded for filter icon
                  Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FaIcon(FontAwesomeIcons.sliders, size: 24,)
                        ],
                      )
                  )
                ],
              ),
            )
        
          ],
        ),
      )
    );
  }
}
