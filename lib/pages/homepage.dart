import 'package:ebook_shelf/pages/single_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

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

          title: const Text('eBook Shelf', style: TextStyle(color: Colors.white),),
          backgroundColor: primaryColor,
        ),



        body: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [

              // First Columns start (trending book)
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search Book...',
                  hintStyle: const TextStyle( color: Colors.grey),
                  filled: true,
                  fillColor: const Color(0xFFECECEC),
                  suffixIcon: const Icon(Icons.search),
                  suffixIconColor: Colors.grey,

                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(100),

                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),

                ),
              ),

              const SizedBox(height: 30,),
              
              SizedBox(
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
                      child: const Text('View All'),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 10,),
              
              Container(
                height: 250,

                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListView.builder(

                    scrollDirection: Axis.horizontal,
                    itemCount: trendingbooks.length,
                    itemBuilder: (context, index){

                      return Container(
                        margin: const EdgeInsets.only(right: 8),
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
                                      offset: const Offset(1, 3),
                                    )
                                  ]

                              ),
                              child: InkWell(
                                onTap: (){
                                  // Navigate to SingleBookPage and pass data
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SingleBook(
                                        title: trendingbooks[index]['title'],
                                        author: trendingbooks[index]['author'],
                                        image: trendingbooks[index]['image'],
                                        description: trendingbooks[index]['description'],
                                        price: trendingbooks[index]['price'],
                                        rating: trendingbooks[index]['rating'],
                                        numberofpage: trendingbooks[index]['numberofpage'],
                                        lagunage: trendingbooks[index]['language'],
                                        bookcategory: trendingbooks[index]['bookcategory'],
                                      ),
                                    ),
                                  );
                                },
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
                            ),
                            //end of the Image Part now have to set the title

                            Container(
                              height: 80,
                               //same as container width and image width

                              margin: const EdgeInsets.only(top: 5),

                              child: Column(

                                children: [
                                  Text(
                                    trendingbooks[index]['title'].toString(),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black


                                    ),
                                  ),

                                  Text(
                                    trendingbooks[index]['author'].toString(),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,


                                    ),
                                  ),

                                  SizedBox(height: 2,),

                                  // star rating
                                  RatingStars(
                                    starCount: 5,
                                    value: trendingbooks[index]['rating']!,
                                    starSize: 12,
                                    starSpacing: 2,
                                    starColor: Colors.yellow,
                                    valueLabelVisibility: false,
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
              // end of first row


              // Second column started for Recommanded books
              SizedBox(
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
                      child: const Text('View All'),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 10,),

              Container(
                height: 250,

                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListView.builder(

                    scrollDirection: Axis.horizontal,
                    itemCount: recommendedbooks.length,
                    itemBuilder: (context, index){

                      return Container(
                        margin: const EdgeInsets.only(right: 8),
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
                                      offset: const Offset(1, 3),
                                    )
                                  ]

                              ),
                              child: InkWell(

                                onTap: (){
                                  // Navigate to SingleBookPage and pass data
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SingleBook(
                                        title: recommendedbooks[index]['title'],
                                        author: recommendedbooks[index]['author'],
                                        image: recommendedbooks[index]['image'],
                                        description: recommendedbooks[index]['description'],
                                        price: recommendedbooks[index]['price'],
                                        rating: recommendedbooks[index]['rating'],
                                        numberofpage: recommendedbooks[index]['numberofpage'],
                                        lagunage: recommendedbooks[index]['language'],
                                        bookcategory: recommendedbooks[index]['bookcategory'],
                                      ),
                                    ),
                                  );
                                },

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
                            ),
                            //end of the Image Part now have to set the title

                            Container(
                                height: 80,
                                //same as container width and image width

                                margin: const EdgeInsets.only(top: 5),

                                child: Column(

                                  children: [
                                    Text(
                                      recommendedbooks[index]['title'].toString(),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black


                                      ),
                                    ),

                                    Text(
                                      recommendedbooks[index]['author'].toString(),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,


                                      ),
                                    ),

                                    SizedBox(height: 2,),
                                    // star rating
                                    RatingStars(
                                      starCount: 5,
                                      value: recommendedbooks[index]['rating']!,
                                      starSize: 13,
                                      starSpacing: 2,
                                      starColor: Colors.yellow,
                                      valueLabelVisibility: false,
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
        ),

      );



    }

}

//trending book list
final List<Map<String, dynamic>> trendingbooks = [
  {
    'bookId': '1',
    'image': 'assets/images/ebok1.png',
    'title': 'Create Your Own Business',
    'price': 9.99,
    'rating': 4.7,
    'author': 'John Doe',
    'description': 'This book provides an insightful guide for aspiring entrepreneurs looking to navigate the complex world of business. It covers essential topics such as market research, business planning, and financial management, offering practical advice to help readers turn their innovative ideas into reality. With engaging case studies and expert insights, John Doe equips readers with the tools they need to succeed in their entrepreneurial journey. Whether you are a first-time business owner or looking to expand an existing venture, this book is a valuable resource for anyone ready to take the leap into entrepreneurship.',
    'language': 'English',
    'numberofpage': 230,
    'bookcategory': 'Business'
  },
  {
    'bookId': '2',
    'image': 'assets/images/ebook2.png',
    'title': 'Celebrate the Day of Forest',
    'price': 12.99,
    'rating': 4.9,
    'author': 'Emily Smith',
    'description': 'Celebrate the Day of Forest is a captivating exploration that delves into the beauty and significance of forests around the world. Emily Smith takes readers on a journey through various ecosystems, highlighting the crucial role forests play in maintaining our planet’s health and biodiversity. This beautifully illustrated book is filled with fascinating facts, stories of conservation efforts, and practical steps individuals can take to protect these vital resources. Through engaging narratives and vivid imagery, readers will develop a deeper appreciation for nature and the urgent need to preserve our forests for future generations.',
    'language': 'English',
    'numberofpage': 180,
    'bookcategory': 'Environment'
  },
  {
    'bookId': '3',
    'image': 'assets/images/ebook3.png',
    'title': 'Winter',
    'price': 15.99,
    'rating': 4.3,
    'author': 'Michael Brown',
    'description': 'Winter is a beautifully written narrative that captures the essence of the coldest season. Michael Brown weaves together tales of introspection, change, and resilience against the backdrop of winter landscapes. Through the eyes of diverse characters, readers will experience the magic and challenges that winter brings, from the serene beauty of snow-covered trees to the struggles of everyday life. The author’s lyrical prose invites readers to reflect on their own winter experiences, evoking a sense of nostalgia and connection to nature. This poignant book will resonate with anyone who has ever found beauty in the stillness of winter.',
    'language': 'English',
    'numberofpage': 300,
    'bookcategory': 'Fiction'
  },
  {
    'bookId': '4',
    'image': 'assets/images/ebook4.png',
    'title': 'Witness',
    'price': 10.99,
    'rating': 4.7,
    'author': 'Sarah Johnson',
    'description': 'Witness is a gripping thriller that keeps readers on the edge of their seats from start to finish. Sarah Johnson masterfully crafts a tale of suspense, betrayal, and unexpected twists that will leave readers guessing until the very last page. The story revolves around a pivotal moment that changes the lives of the characters forever, forcing them to confront their deepest fears and darkest secrets. With intricate plot development and rich character depth, this book explores themes of trust, justice, and the consequences of choices. Readers will be captivated by the fast-paced narrative and profound emotional impact of the story.',
    'language': 'English',
    'numberofpage': 250,
    'bookcategory': 'Thriller'
  },
  {
    'bookId': '5',
    'image': 'assets/images/ebook5.png',
    'title': 'Yellow Box',
    'price': 10.99,
    'rating': 4.5,
    'author': 'Jessica Lee',
    'description': 'Yellow Box is an imaginative tale that invites readers into a world of creativity and adventure. Jessica Lee’s enchanting storytelling captivates the imagination as it follows the journey of a young protagonist who discovers a mysterious yellow box that holds the key to a realm of possibilities. Throughout the story, readers will experience the joy of exploration, the power of friendship, and the importance of believing in oneself. The vibrant characters and vivid settings breathe life into this delightful narrative, making it a perfect read for anyone seeking inspiration and a sense of wonder in their own lives.',
    'language': 'English',
    'numberofpage': 190,
    'bookcategory': 'Art & Creativity'
  },
  {
    'bookId': '6',
    'image': 'assets/images/ebook6.png',
    'title': 'The Center',
    'price': 10.99,
    'rating': 4.3,
    'author': 'David Wilson',
    'description': 'The Center explores the intricacies of human relationships, delving deep into the emotional connections that bind us together. David Wilson examines various facets of love, friendship, and family, providing insightful commentary on what it means to be truly connected to others. Through a series of poignant stories and relatable experiences, readers will reflect on their own relationships and the impact of shared moments. This thought-provoking book encourages a deeper understanding of ourselves and those around us, making it an essential read for anyone seeking to enhance their interpersonal skills and foster meaningful connections.',
    'language': 'English',
    'numberofpage': 220,
    'bookcategory': 'Relationships'
  },
  {
    'bookId': '7',
    'image': 'assets/images/ebook7.png',
    'title': 'Joy of Consent',
    'price': 10.99,
    'rating': 4.1,
    'author': 'Karen Davis',
    'description': 'Joy of Consent is an enlightening book that focuses on the critical importance of consent in all aspects of life. Karen Davis discusses the various dimensions of consent, exploring its role in relationships, communication, and personal autonomy. With thoughtful insights and practical advice, this book serves as a guide to fostering a culture of respect and understanding. Readers will learn how to navigate conversations around consent, develop healthy boundaries, and empower themselves and others to express their needs and desires. Through real-life examples and empowering narratives, this book inspires positive change in personal and societal dynamics.',
    'language': 'English',
    'numberofpage': 210,
    'bookcategory': 'Self-Help'
  },
  {
    'bookId': '8',
    'image': 'assets/images/ebook8.png',
    'title': 'Good Habits',
    'price': 10.99,
    'rating': 4.9,
    'author': 'Chris Martinez',
    'description': 'Good Habits is a practical guide that helps readers develop essential habits for personal and professional growth. Chris Martinez emphasizes the importance of consistency, discipline, and motivation in achieving lasting change. Through actionable strategies and relatable anecdotes, this book provides readers with the tools they need to cultivate positive habits that lead to success. Each chapter offers insights into habit formation, goal-setting, and overcoming obstacles, making it an invaluable resource for anyone looking to improve their life. By focusing on the power of daily routines, readers will discover how small changes can lead to significant transformations over time.',
    'language': 'English',
    'numberofpage': 200,
    'bookcategory': 'Personal Development'
  }
];



// Sample data for trending books with local image paths and author names
final List<Map<String, dynamic>> recommendedbooks = [
  {
    'image': 'assets/images/ebook9.png',
    'title': 'Stephen King',
    'price': 9.99,
    'rating': 4.7,
    'author': 'Stephen King',
    'language': 'English',
    'numberofpage': 400,
    'bookcategory': 'Horror',
    'description': 'Stephen King, the master of horror, captivates readers with his spine-chilling narratives. In this collection, he explores the darkest corners of human nature, weaving tales that grip the reader from the very first page. Each story is a testament to his unparalleled storytelling ability, leaving you both terrified and intrigued long after you turn the last page.'
  },
  {
    'image': 'assets/images/ebook10.png',
    'title': 'History of Burning',
    'price': 12.99,
    'rating': 4.8,
    'author': 'Laura Johnson',
    'language': 'English',
    'numberofpage': 350,
    'bookcategory': 'Historical Fiction',
    'description': 'In "History of Burning," Laura Johnson takes readers on a gripping journey through the ages. This historical fiction novel delves into pivotal moments in history where fire has shaped societies, cultures, and destinies. Richly researched and beautifully written, it blends real events with compelling characters, creating a tapestry of human resilience and the transformative power of fire.'
  },
  {
    'image': 'assets/images/ebook11.png',
    'title': 'Excavation',
    'price': 15.99,
    'rating': 4.3,
    'author': 'Michael Roberts',
    'language': 'English',
    'numberofpage': 320,
    'bookcategory': 'Adventure',
    'description': 'Michael Roberts invites readers on an unforgettable adventure in "Excavation." This thrilling novel follows a team of archaeologists who uncover an ancient civilization buried beneath the desert sands. As they delve deeper, they face challenges and dangers that test their limits. The story combines elements of mystery, exploration, and human courage, making it a captivating read for adventure lovers.'
  },
  {
    'image': 'assets/images/ebook12.png',
    'title': 'What Napoleon Could Not Do',
    'price': 10.99,
    'rating': 4.9,
    'author': 'Emily Davis',
    'language': 'English',
    'numberofpage': 280,
    'bookcategory': 'Historical Drama',
    'description': 'In "What Napoleon Could Not Do," Emily Davis explores the complex world of ambition and power. Set against the backdrop of the Napoleonic era, this historical drama weaves together the lives of historical figures and ordinary citizens. The narrative reveals the impact of political decisions on personal lives, showcasing how dreams can lead to both glory and despair.'
  },
  {
    'image': 'assets/images/ebook13.png',
    'title': 'The Guest Lecturer',
    'price': 10.99,
    'rating': 4.1,
    'author': 'Daniel Lee',
    'language': 'English',
    'numberofpage': 250,
    'bookcategory': 'Education',
    'description': 'Daniel Lee’s "The Guest Lecturer" is an enlightening exploration of the education system through the eyes of a passionate educator. The story follows a guest lecturer who ignites the minds of students while navigating the challenges of the academic world. With engaging anecdotes and insightful reflections, this book inspires readers to appreciate the value of knowledge and teaching.'
  },
  {
    'image': 'assets/images/ebook14.png',
    'title': 'This is Salvaged',
    'price': 10.99,
    'rating': 4.8,
    'author': 'Sarah Wilson',
    'language': 'English',
    'numberofpage': 270,
    'bookcategory': 'Literary Fiction',
    'description': 'In "This is Salvaged," Sarah Wilson presents a poignant narrative about love, loss, and redemption. The story revolves around a group of friends navigating the complexities of life while uncovering the beauty in salvaged moments. Wilson’s lyrical prose paints vivid pictures of their struggles and triumphs, making it a deeply moving read that resonates with anyone who has experienced the highs and lows of relationships.'
  },
  {
    'image': 'assets/images/ebook15.png',
    'title': 'Molly Gohee',
    'price': 10.99,
    'rating': 4.0,
    'author': 'Jessica Clark',
    'language': 'English',
    'numberofpage': 230,
    'bookcategory': 'Biography',
    'description': 'Jessica Clark’s "Molly Gohee" is a heartfelt biography that chronicles the extraordinary life of a remarkable woman. Through her struggles and achievements, Molly’s journey reflects resilience and determination. The narrative highlights her contributions to society, shedding light on the challenges faced by women in her era. This inspiring story is a testament to the strength of the human spirit and the power of hope.'
  }
];