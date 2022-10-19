// import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:happyendingapp/home/new_arrival_page.dart';
import 'package:happyendingapp/home/product_detail.dart';
import 'package:happyendingapp/home/product_list.dart';
import 'package:happyendingapp/menu/drawer_menu.dart';
import 'package:carousel_slider/carousel_controller.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  FirstScreenState createState() => FirstScreenState();
}

class Topimage {
  final String img;
  const Topimage({required this.img});
}

class FirstScreenState extends State<FirstScreen> {
  int _currentColor = 0;
  List<Topimage> firstImgList = [
    Topimage(img: "images/doll.jpg"),
    Topimage(img: "images/gray_toy.jpg"),
    Topimage(img: "images/chesh.jpg"),
    Topimage(img: "images/knu.jpg"),
    Topimage(img: "images/tha.jpg"),
    Topimage(img: "images/man.jpg"),
  ];
  List<Topimage> marchandise = [
    Topimage(img: "images/amazon.jpg"),
    Topimage(img: "images/netflix.png"),
    Topimage(img: "images/marvel.png"),
  ];
  List<Topimage> topSelling = [
    Topimage(img: "images/thd.jpg"),
    Topimage(img: "images/tha.jpg"),
    Topimage(img: "images/thd.jpg"),
    Topimage(img: "images/th.jpg"),
    Topimage(img: "images/doll.jpg"),
    Topimage(img: "images/sico.jpg"),
  ];
  List<Topimage> bottomImage = [
    Topimage(img: "images/koala.jpg"),
    Topimage(img: "images/rabbit.jpg"),
    Topimage(img: "images/family.jpg"),
    Topimage(img: "images/banana.jpg"),
    Topimage(img: "images/knu.jpg"),
    Topimage(img: "images/sico.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MenuBar(),
      appBar: AppBar(
        iconTheme: const IconThemeData.fallback(),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.card_travel,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: width,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CarouselSlider(
                      items: firstImgList
                          .map(
                            (item) => ClipRRect(
                              child: Image.asset(
                                item.img,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          )
                          .toList(),
                      options: CarouselOptions(
                          autoPlay: true,
                          height: 400.0,
                          enableInfiniteScroll: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentColor = index;
                            });
                          },
                          viewportFraction: 1),
                    ),
                    Container(
                      height: 25,
                      color: Colors.transparent,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: firstImgList.map((item) {
                            int index = firstImgList.indexOf(item);
                            return Container(
                              height: 8,
                              width: 35,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _currentColor == index
                                      ? Color.fromRGBO(0, 0, 0, 0.9)
                                      : Color.fromRGBO(0, 0, 0, 0.4)),
                            );
                          }).toList()),
                    ),
                  ],
                ),
              ),
              SizedBox(height: width * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Text(
                  "COLLECTIONS",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.05),
                ),
              ),
              SizedBox(height: width * 0.04),
              Container(
                // height: 270,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  items: bottomImage
                      .map(
                        (item) => GestureDetector(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => NewArrivalPage())),
                          child: Container(
                            child: ClipRRect(
                              child: Image.asset(
                                item.img,
                                fit: BoxFit.cover,
                                width: 260,
                                // MediaQuery.of(context).size.width ,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                      autoPlay: true,
                      height: 200.0,
                      enableInfiniteScroll: true,
                      viewportFraction: 0.7),
                ),
              ),
              SizedBox(height: width * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Text(
                  "CATEGORIES",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.05),
                ),
              ),
              SizedBox(height: width * 0.04),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 200,
                          width: 190,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "images/rabbit.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductList()));
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 200,
                          width: 190,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "images/banana.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductList()));
                        },
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 200,
                          width: 190,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "images/koala.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductList()));
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 200,
                          width: 190,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "images/family.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductList()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: width * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Text(
                  "OFFICIAL MERCHANDISE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.05),
                ),
              ),
              SizedBox(height: width * 0.04),
              CarouselSlider(
                items: marchandise
                    .map((item) => ClipRRect(
                          child: Image.asset(
                            item.img,
                            fit: BoxFit.cover,
                            width: 260,
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 0.7,
                    enableInfiniteScroll: true,
                    height: 80),
              ),
              SizedBox(height: width * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Text(
                  "TOP SELLING",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.05),
                ),
              ),
              SizedBox(height: width * 0.04),
              CarouselSlider(
                items: topSelling
                    .map(
                      (item) => Container(
                        margin: EdgeInsets.all(5),
                        width: 190,
                        height: 270,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(width: 1, color: Colors.black45),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(9.0),
                                topRight: Radius.circular(9.0),
                              ),
                              child: Image.asset(
                                item.img,
                                fit: BoxFit.cover,
                                width: width,
                                height: 200,
                              ),
                            ),
                            SizedBox(height: width * 0.01),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "Lorem ipsum dolor sit",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 12),
                                      ),
                                      Icon(
                                        Icons.favorite_border,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    "Lorem",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 8),
                                  ),
                                  SizedBox(height: width * 0.01),
                                  const Text(
                                    "₹ 456",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 12),
                                  ),
                                  SizedBox(height: width * 0.04)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0))),
                                  width: width,
                                  child: const Center(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 8,
                                        // fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  height: 300,
                  viewportFraction: 0.5,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentColor = index;
                    });
                  },
                ),
              ),
              SizedBox(height: width * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Text(
                  "FEATURED PRODUCT",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.05),
                ),
              ),
              SizedBox(height: width * 0.04),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CarouselSlider(
                    items: bottomImage
                        .map(
                          (item) => GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => ProductDetailPage())),
                            child: Container(
                              height: 270,
                              child: Image.asset(
                                item.img,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1,
                      height: 270,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentColor = index;
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 25,
                    color: Colors.transparent,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: bottomImage.map((item) {
                          int index = bottomImage.indexOf(item);
                          return Container(
                            height: 8,
                            width: 35,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentColor == index
                                    ? Color.fromRGBO(0, 0, 0, 0.9)
                                    : Color.fromRGBO(0, 0, 0, 0.4)),
                          );
                        }).toList()),
                  ),
                ],
              ),
              SizedBox(height: width * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
