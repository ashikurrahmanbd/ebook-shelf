import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  get primaryColor => Theme.of(context).colorScheme.primary;



    @override
    Widget build(BuildContext context) {
      return  Scaffold(
          appBar: AppBar(
            title: Text('eBook Shelf', style: TextStyle(color: Colors.white),),
            backgroundColor: primaryColor,
          ),
        
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
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

              SizedBox(height: 30,),
              
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Trending Books', style: TextStyle(
                        color: Colors.grey,
                        fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize ?? 22.0,
                    ),

                    ),

                    InkWell(
                      onTap: (){
                        //navigate to a all trending Books Page
                      },
                      child: Text('View All'),
                    )
                  ],
                ),
              ),

              SizedBox(height: 10,),
              
              Container(
                height: 250,

                padding: EdgeInsets.symmetric(vertical: 5),
                child: ListView.builder(

                    scrollDirection: Axis.horizontal,
                    itemCount: trendingbooks.length,
                    itemBuilder: (context, index){

                      return Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 150,
                        width: 100,
                        child: Column(
                          children: [

                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),

                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 2.0,
                                      spreadRadius: 1.0,
                                      offset: Offset(1, 3),
                                    )
                                  ]

                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10), // Apply the border radius here
                                child: Image(
                                  image: AssetImage(trendingbooks[index]['image']),
                                  height: 150, // Set the height of the image
                                  width: 100, // Set the width of the image to match the container
                                  fit: BoxFit.cover, // Ensure the image covers the area
                                ),
                              ),
                            ),
                            //end of the Image Part now have to set the title

                            Container(
                              height: 80,
                               //same as container width and image width

                              margin: EdgeInsets.only(top: 5),

                              child: Column(

                                children: [
                                  Text(
                                    'Ebook title something ebook title',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black


                                    ),
                                  ),

                                  Text(
                                    'Author Name',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,


                                    ),
                                  ),


                                ],
                              )
                            )

                          ],
                        ),
                      );

                    }
                ),
              ),



              // Second column started for Recommanded books
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Recommended Books', style: TextStyle(
                      color: Colors.grey,
                      fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize ?? 22.0,
                    ),

                    ),

                    InkWell(
                      onTap: (){
                        //navigate to a all trending Books Page
                      },
                      child: Text('View All'),
                    )
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Container(
                height: 250,

                padding: EdgeInsets.symmetric(vertical: 5),
                child: ListView.builder(

                    scrollDirection: Axis.horizontal,
                    itemCount: recommendedbooks.length,
                    itemBuilder: (context, index){

                      return Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 150,
                        width: 100,
                        child: Column(
                          children: [

                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),

                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 2.0,
                                      spreadRadius: 1.0,
                                      offset: Offset(1, 3),
                                    )
                                  ]

                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10), // Apply the border radius here
                                child: Image(
                                  image: AssetImage(recommendedbooks[index]['image']),
                                  height: 150, // Set the height of the image
                                  width: 100, // Set the width of the image to match the container
                                  fit: BoxFit.cover, // Ensure the image covers the area
                                ),
                              ),
                            ),
                            //end of the Image Part now have to set the title

                            Container(
                                height: 80,
                                //same as container width and image width

                                margin: EdgeInsets.only(top: 5),

                                child: Column(

                                  children: [
                                    Text(
                                      'Ebook title something ebook title',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black


                                      ),
                                    ),

                                    Text(
                                      'Author Name',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,


                                      ),
                                    ),


                                  ],
                                )
                            )

                          ],
                        ),
                      );

                    }
                ),
              ),
            //end of second column
              
            ],
          ),
        )
      );
    }

}


// Sample data for books with local image paths
final List<Map<String, dynamic>> trendingbooks = [
  {
    'image': 'assets/images/ebok1.png', // Local image path
    'title': 'Create Your Own Business',
    'price': 9.99,
  },
  {
    'image': 'assets/images/ebook2.png',
    'title': 'Celebrate the day of Forest',
    'price': 12.99,
  },
  {
    'image': 'assets/images/ebook3.png',
    'title': 'Winter',
    'price': 15.99,
  },
  {
    'image': 'assets/images/ebook4.png',
    'title': 'Witness',
    'price': 10.99,
  },
  {
    'image': 'assets/images/ebook5.png',
    'title': 'Book Title 4',
    'price': 10.99,
  },
  {
    'image': 'assets/images/ebook6.png',
    'title': 'Book Title 4',
    'price': 10.99,
  },
  {
    'image': 'assets/images/ebook7.png',
    'title': 'Book Title 4',
    'price': 10.99,
  },
  {
    'image': 'assets/images/ebook8.png',
    'title': 'Book Title 4',
    'price': 10.99,
  },

  // Add more books as needed
];


// Sample data for trending books with local image paths
final List<Map<String, dynamic>> recommendedbooks = [
  {
    'image': 'assets/images/ebook9.png', // Local image path
    'title': 'Create Your Own Business',
    'price': 9.99,
  },
  {
    'image': 'assets/images/ebook10.png',
    'title': 'Celebrate the day of Forest',
    'price': 12.99,
  },
  {
    'image': 'assets/images/ebook11.png',
    'title': 'Winter',
    'price': 15.99,
  },
  {
    'image': 'assets/images/ebook12.png',
    'title': 'Witness',
    'price': 10.99,
  },
  {
    'image': 'assets/images/ebook13.png',
    'title': 'Book Title 4',
    'price': 10.99,
  },
  {
    'image': 'assets/images/ebook14.png',
    'title': 'Book Title 4',
    'price': 10.99,
  },
  {
    'image': 'assets/images/ebook15.png',
    'title': 'Book Title 4',
    'price': 10.99,
  },

  // Add more books as needed
];