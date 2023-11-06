// ignore_for_file: avoid_print

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:planty_homes/screens/home/widget/category_card.dart';
import 'package:planty_homes/screens/home/widget/choice.dart';
import 'package:planty_homes/screens/home/widget/nursery.dart';
import 'package:planty_homes/screens/home/widget/nursery_card.dart';
import 'package:planty_homes/screens/home/widget/nursery_flex.dart';
import 'package:planty_homes/screens/home/widget/search_field.dart';
import 'package:planty_homes/screens/home/widget/dropdown.dart';
import 'package:planty_homes/location.dart';

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
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            child: IconButton(
              iconSize: 30,
              icon: const Icon(Icons.location_on),
              onPressed: () {
                // Navigate to the location picker screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LocationPickerScreen()),
                );
              },
              color: Colors.white,
            ),
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Pau Sector 35, Chandigarh',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 5),
              child: IconButton(
                iconSize: 40,
                icon: const Icon(Icons.account_circle_sharp),
                onPressed: () {},
              ),
            ),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SearchField(),
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
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                    horizontal: size.width * 0.001,
                  ),
                  child: Row(
                    children: [
                      const Dropdown(),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Gifts',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.001,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Fast Delivery',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.001,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Ceramic',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "What's New",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: size.height * 0.035,
                    fontWeight: FontWeight.w800,
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
                  "What to Plant Today?",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: size.height * 0.035,
                    fontWeight: FontWeight.w800,
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
                    fontWeight: FontWeight.w800,
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
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),

                NurseryFlex(nurseryInstance: outlet[0]),
                NurseryFlex(nurseryInstance: outlet[1]),
                NurseryFlex(nurseryInstance: outlet[2])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
