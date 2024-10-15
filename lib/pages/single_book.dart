import 'package:ebook_shelf/app_bottom_navigation.dart';
import 'package:ebook_shelf/appcolors.dart';
import 'package:ebook_shelf/main.dart';
import 'package:flutter/material.dart';

class SingleBook extends StatelessWidget {

  final String? title;
  final String? author;
  final String? image;
  final String ?description;
  final double? price;
  final String? rating;
  final int? numberofpage;
  final String? lagunage;
  final String? bookcategory;

  const SingleBook({
    Key? key,
     this.title,
     this.author,
     this.image,
     this.description,
     this.price,
     this.rating,
    this.numberofpage,
    this.lagunage,
    this.bookcategory,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_circle_left,
              size: 34, color: Colors.white,)
        ),
        actions: [
          Icon(Icons.favorite_border, color: Colors.white,),
          SizedBox(width: 10,)
        ],

      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 250,  // Your container's height
              width: MediaQuery.of(context).size.width,
              color: Colors.deepPurple,

              child: Stack(

                clipBehavior: Clip.none,  // This prevents clipping, allowing the image to overflow outside
                children: [

                  // Position the image to come out of the container
                  Positioned(
                    top: 10,
                    left: 0,
                    right: 0,

                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),  // Same borderRadius as the ClipRRect
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),  // Shadow color with transparency
                              spreadRadius: 5,  // Spread of the shadow
                              blurRadius: 10,  // Softness of the shadow
                              offset: Offset(0, 5),  // Position of the shadow (x, y)
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                              image.toString(),
                              height: 300,
                              width: 200,
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 60,),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Text('$title', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(AppPrimaryColor.appHeadingTextColor!)), textAlign: TextAlign.center,),
                  SizedBox(height: 4,),
                  //author
                  Text('$author', style: TextStyle(fontSize: 14,), textAlign: TextAlign.center,),
                  SizedBox(height: 4,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.yellow,),
                      Icon(Icons.star, color: Colors.yellow,),
                      Icon(Icons.star, color: Colors.yellow,),
                      Icon(Icons.star, color: Colors.yellow,),
                      Icon(Icons.star, color: Colors.yellow,)
                    ],
                  ),

                  SizedBox(height: 14,)



                ],
              ),
            ),

            //book basic info
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(8),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: Offset(1, 1)
                    )
                  ]
                ),

                child: Column(

                  children: [
                    //a row of book info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('Genere of Books', style: TextStyle(fontSize: 13),),
                            Text('$bookcategory', style: TextStyle(fontSize: 12, color: Colors.grey),),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Lauguage', style: TextStyle(fontSize: 13),),
                            Text('${lagunage}', style: TextStyle(fontSize: 12, color: Colors.grey),),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Number of Pages', style: TextStyle(fontSize: 13),),
                            Text('${numberofpage.toString()}', style: TextStyle(fontSize: 12, color: Colors.grey),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            //Short Description of book
            Container(
              padding: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: 100,

                      ),
                    child: Column(
                      children: [
                        Text(
                          ''' ${description} ''',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                          textAlign: TextAlign.justify,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 25,),
                        SizedBox(
                          width: 200,
                          height: 50,

                          child: ElevatedButton(
                              onPressed: (){

                              },

                              style: ElevatedButton.styleFrom(

                                backgroundColor: Colors.deepPurple,
                                elevation: 5,

                              ),
                              child: Text('Start Reading', style: TextStyle(color: Colors.white, fontSize: 17),)
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )

          ],
        )
      ),
    );
  }
}
