import 'package:ebook_shelf/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

        title: const Text('List of Current Readings', style: TextStyle(color: Colors.white),),
        backgroundColor: primaryColor,
      ),

      body: ListView.builder(
        itemCount: currentReadings.length,
        itemBuilder: (context, index) {
          return Container(
            //container e height deya jabe na. just make it a free  to expand anytime
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(8), //padding will be decreased from child

            child: Column(
              children: [
                Container(

                  height: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54.withOpacity(0.2),
                          blurRadius: 4,
                          spreadRadius: 2,
                          offset: Offset(1, 3),

                        )
                      ]
                  ),

                  child: Row(
                    children: [
                      ClipRRect(
                          borderRadius:BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                          child: Image(
                            image: AssetImage(currentReadings[index]['bookimageurl']),
                          )
                      ),
                      
                      Expanded(

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(currentReadings[index]['title']),
                                SizedBox(height: 2,),
                                Text('Reading Paused At ' + currentReadings[index]['pausedat'].toString() + 'th Page', style: TextStyle(fontSize: 12, color: Colors.grey),),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text('Resume Reading'),
                                    FaIcon(FontAwesomeIcons.arrowRightFromBracket, size: 16, color: Color(AppPrimaryColor.appPrimaryColor),),
                                  ],
                                )
                              ],
                            ),
                          )
                      )
                    ],
                  ),


                )
              ],
            ),
          );
        },
      ),

    );





  }
}



//all book list of current readings
final List<Map<String, dynamic>> currentReadings = [
  {
    'title': 'The Art of Innovation',
    'booked': 101,
    'pausedat': 45,
    'bookimageurl': 'assets/images/ebok1.png',
  },
  {
    'title': 'Mindful Living',
    'booked': 102,
    'pausedat': 67,
    'bookimageurl': 'assets/images/ebook2.png',
  },
  {
    'title': 'Digital Transformation',
    'booked': 103,
    'pausedat': 12,
    'bookimageurl': 'assets/images/ebook3.png',
  },
  {
    'title': 'Sustainable Future',
    'booked': 104,
    'pausedat': 29,
    'bookimageurl': 'assets/images/ebook4.png',
  },
  {
    'title': 'Exploring the Cosmos',
    'booked': 105,
    'pausedat': 83,
    'bookimageurl': 'assets/images/ebook5.png',
  },
  {
    'title': 'Mastering the Market',
    'booked': 106,
    'pausedat': 39,
    'bookimageurl': 'assets/images/ebook6.png',
  },
  {
    'title': 'Creative Thinking',
    'booked': 107,
    'pausedat': 22,
    'bookimageurl': 'assets/images/ebook7.png',
  },
  {
    'title': 'The Psychology of Success',
    'booked': 108,
    'pausedat': 51,
    'bookimageurl': 'assets/images/ebook8.png',
  },
  {
    'title': 'The Power of Habit',
    'booked': 109,
    'pausedat': 78,
    'bookimageurl': 'assets/images/ebok1.png',
  },
  {
    'title': 'The Art of Negotiation',
    'booked': 110,
    'pausedat': 34,
    'bookimageurl': 'assets/images/ebook2.png',
  },
  {
    'title': 'Leadership Principles',
    'booked': 111,
    'pausedat': 15,
    'bookimageurl': 'assets/images/ebook3.png',
  },
  {
    'title': 'Global Economies',
    'booked': 112,
    'pausedat': 61,
    'bookimageurl': 'assets/images/ebook4.png',
  },
  {
    'title': 'Artificial Intelligence Explained',
    'booked': 113,
    'pausedat': 49,
    'bookimageurl': 'assets/images/ebook5.png',
  },
  {
    'title': 'The Future of Work',
    'booked': 114,
    'pausedat': 74,
    'bookimageurl': 'assets/images/ebook6.png',
  },
  {
    'title': 'Emotional Intelligence',
    'booked': 115,
    'pausedat': 27,
    'bookimageurl': 'assets/images/ebook7.png',
  },
];

