// ignore_for_file: avoid_print

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:planty_homes/screens/home/widget/category_card.dart';
import 'package:planty_homes/screens/home/widget/choice.dart';
import 'package:planty_homes/screens/home/widget/nursery.dart';
import 'package:planty_homes/screens/home/widget/nursery_card.dart';
import 'package:planty_homes/screens/home/widget/nursery_flex.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _MenuItem {
  final IconData icon;
  final String title;

  _MenuItem(this.icon, this.title);
}

class _HomeScreenState extends State<HomeScreen> {
  List imageList = [
    {"id": "1", "image_path": 'assets/images/carousel-1.jfif'},
    {"id": "2", "image_path": 'assets/images/carousel-2.jfif'},
  ];
  List menuList = [
    _MenuItem(Icons.verified_user, 'My Profile'),
    _MenuItem(Icons.autorenew, 'Book a Cab'),
    _MenuItem(Icons.ac_unit, 'Booking Schedule'),
    _MenuItem(Icons.center_focus_strong, 'Track Your Cab'),
    _MenuItem(Icons.question_answer, 'Help & Feedback'),
    _MenuItem(Icons.phone, 'Call to Transport'),
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Planty Homes',
          style: TextStyle(color: Colors.white),
        ),
      ),
      // ignore: sized_box_for_whitespace
      body: Container(
        height: size.height * 0.91,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.03,
              vertical: size.height * 0.012,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What's New",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: size.height * 0.035,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        print(currentIndex);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                        child: CarouselSlider(
                          items: imageList
                              .map(
                                (item) => Image.asset(
                                  item['image_path'],
                                  fit: BoxFit.fill,
                                  width: size.width * 0.95,
                                ),
                              )
                              .toList(),
                          disableGesture: false,
                          carouselController: carouselController,
                          options: CarouselOptions(
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: true,
                            aspectRatio: 2.05,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "What to Plant Today",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: size.height * 0.035,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: size.height * 0.225,
                  width: double.infinity,
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    children: List.generate(choices.length, (index) {
                      return Center(
                        child: CategoryCard(choice: choices[index]),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Text(
                  "Featured Nurseries",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: size.height * 0.035,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: size.height * 0.225,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(outlet.length, (index) {
                      return NurseryCard(nurseryInstance: outlet[index]);
                    }),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  "Nurseries Around You",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: size.height * 0.035,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                NurseryFlex(nurseryInstance: outlet[0])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
