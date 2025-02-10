import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rapido_app_clone/screens/drawer_screen.dart';
import 'package:rapido_app_clone/utills/custom_text_style.dart';
import 'package:rapido_app_clone/widgets/my_explore_cards.dart';
import 'package:rapido_app_clone/widgets/my_save_more_cards.dart';
import 'search_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget> bannerImage = [
    Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.blue),
          image: const DecorationImage(
              image: AssetImage(
                "assets/image/rapido banner 2.png",
              ),
              fit: BoxFit.cover)),
    ),
    Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.blue),
          image: const DecorationImage(
              image: AssetImage(
                "assets/image/rapido banner 3.png",
              ),
              fit: BoxFit.cover)),
    ),
    Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.blue),
          image: const DecorationImage(
              image: AssetImage(
                "assets/image/rapido poster 1.png",
              ),
              fit: BoxFit.cover)),
    ),
  ];

  List<Map<String, dynamic>> data = [
    {"image": "assets/image/parcel.png", "title": "Parcel"},
    {"image": "assets/image/auto.png", "title": "Auto"},
    {"image": "assets/image/cab economy.png", "title": "Cab Economy"},
    {"image": "assets/image/motorbike.png", "title": "Bike"},
    {"image": "assets/image/lite bike.png", "title": "Lite Bike"},
    {"image": "assets/image/cab premium.png", "title": "Cab Premium"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SearchScreen()));
          },

          child: Container(
              height: 40,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12.withOpacity(0.05)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    const Icon(Icons.search_rounded),
                    const SizedBox(
                      width: 10,
                    ),
                    Hero(
                      tag: "anim",
                      child: Text(
                        "Where are you going?",
                        style: myTextStyle20(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        leading: IconButton(
          icon: Icon(Icons.dehaze_rounded),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DrawerScreen()));
          },
        ),
      ),
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Explore",
                    style: myTextStyle18(fontWeight: FontWeight.bold),
                  ),

                  TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          showDragHandle: true,
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 300,
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25.0),
                                    child: Text(
                                      "All Services ",
                                      style: myTextStyle22(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                    child: GridView.builder(
                                      itemCount: data.length,
                                      gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3),
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: MyExploreCard(
                                            imagePath: data[index]['image'],
                                            title: data[index]['title'],
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        "View All",
                        style: myTextStyle15(
                            textColor: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyExploreCard(
                    imagePath: "assets/image/parcel.png",
                    title: "Parcel",
                  ),
                  MyExploreCard(
                    imagePath: "assets/image/auto.png",
                    title: "Auto",
                  ),
                  MyExploreCard(
                    imagePath: "assets/image/cab economy.png",
                    title: "Cab Economy",
                  ),
                  MyExploreCard(
                    imagePath: "assets/image/motorbike.png",
                    title: "Bike",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                  items: bannerImage,
                  options: CarouselOptions(
                    height: 100,
                    aspectRatio: 16 / 3,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                    const Duration(milliseconds: 900),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "Save More With Rapido",
                style: myTextStyle20(textColor: Colors.black87),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    MySaveMoreCard(
                        title: "Airport",
                        imagePath: "assets/image/AirPort-icon.png"),
                    const SizedBox(
                      width: 15,
                    ),
                    MySaveMoreCard(
                        title: "Railway station",
                        imagePath: "assets/image/railway.png"),
                    const SizedBox(
                      width: 15,
                    ),

                    MySaveMoreCard(
                        title: "Bus Stand",
                        imagePath: "assets/image/bus-removebg-review.png"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage(
                          "assets/image/rapido poster 2.png",
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Stack(children: [
              Image.asset(
                "assets/image/children-pattern.png",
                color: Colors.black38,
              ),
              Positioned(
                  left: 0,
                  top: 200,
                  child: Container(
                    color: Colors.white70.withOpacity(0.9),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "#goRapido",
                            style: myTextStyle40(
                                fontWeight: FontWeight.bold,
                                textColor: Colors.black54),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/icon/india.png",
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Made For India",
                                style: myTextStyle18(),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/icon/love(1).png",
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Crafted in Bengaluru",
                                style: myTextStyle18(),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ))
            ])
          ],
        ),
      ),
    );
  }
}

