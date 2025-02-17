import 'package:adv_connect/components/app_style.dart';
import 'package:adv_connect/data_models/advocate_data.dart';
import 'package:adv_connect/pages/booking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<AdvocateData> advocateList = [
    AdvocateData(
      id: 1,
      name: 'TONY STARK',
      description: 'I am the best of ',
      price: '4000/-',
      exp: '28 Y 10 M',
      type: 'Business Lawyer',
      imageUrl: "assets/images/lr_2.jfif",
    ),
    AdvocateData(
      id: 2,
      name: 'Natasha roman',
      description: 'I am the best of ',
      price: '4000/-',
      exp: '18 Y 1 M',
      type: 'Constitutional Lawyer',
      imageUrl: 'assets/images/lr_1.png',
    ),
    AdvocateData(
      id: 3,
      name: 'Thor Odinson',
      description: 'I am the best of ',
      price: '4000/-',
      exp: '25 Y 9 M',
      type: 'Criminal Defense Lawyer',
      imageUrl: 'assets/images/lr_3.jpg',
    ),
    AdvocateData(
      id: 4,
      name: 'Peter Parker',
      description: 'I am the best of ',
      price: '4000/-',
      exp: '10 Y 8 M',
      type: 'Estate Planning Lawyer',
      imageUrl: 'assets/images/lr_4.jpg',
    ),
    AdvocateData(
      id: 5,
      name: 'Steve Rogers',
      description: 'I am the best of ',
      price: '4000/-',
      exp: '10 Y 8 M',
      type: 'Family Lawyer',
      imageUrl: 'assets/images/lr_5.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bgcolor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Book Appointment',
                        style: styles.headLineStyle,
                      ),
                    ],
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 0.6,
                color: Colors.grey[400],
              ),
              Text(
                'What are\nyou looking for ?',
                style: styles.headLineStyle2.copyWith(fontSize: 25),
              ),
              const SizedBox(
                height: 25,
              ),
              const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  labelText: "Search ",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Suggested Lawyers : ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 5),
              ListView.builder(
                itemCount: advocateList.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    // height: 200,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          child: Image.asset(
                            advocateList[index].imageUrl,
                            fit: BoxFit.cover,
                            height: 200,
                            width: 150,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              advocateList[index].name,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              advocateList[index].description,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              advocateList[index].type,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              advocateList[index].exp,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              advocateList[index].price,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 5),
                            RatingBar.builder(
                              ignoreGestures: true,
                              unratedColor: Colors.white,
                              itemSize: 18,
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            const SizedBox(height: 5),
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Booking(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Book Appointment',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
