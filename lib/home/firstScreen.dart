// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:happyendingapp/home/productList.dart';

class FirstScreen extends StatefulWidget {
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
    Topimage(img: "images/thd.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 236, 242),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.card_travel,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // LOREM IPSUM DOLOR SIT AMET PAGE
            Container(
              height: 400,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    child: Image.asset(
                      firstImgList[index].img,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 25,
              color: Colors.white,
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
            SizedBox(
              height: 15,
            ),

            // COLLECTIONS
            Container(
              height: 270,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "COLLECTIONS",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: firstImgList.map((items) {
                        return Container(
                          child: Card(
                            child: Image.asset(
                              items.img,
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            margin: EdgeInsets.all(5),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // CATEGORIES
            Container(
              height: 450,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      " CATEGORIES ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Container(
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
                            SizedBox(
                              width: 6,
                            ),
                            InkWell(
                              child: Container(
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
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Container(
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
                            SizedBox(
                              width: 6,
                            ),
                            InkWell(
                              child: Container(
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
                  )
                ],
              ),
            ),

            Container(
              height: 25,
              color: Colors.white,
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

            SizedBox(
              height: 15,
            ),

            // OFFICIAL MERCHENDISE
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "OFFICIAL MERCHANDISE",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: marchandise.map((items) {
                        return Container(
                          child: Card(
                            child: Image.asset(
                              items.img,
                              fit: BoxFit.cover,
                              height: 60,
                              width: 160,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            margin: EdgeInsets.all(5),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 15,
            ),
            // TOP SELLING
            Container(
              height: 325,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "TOP SELLING",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    height: 290,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: topSelling.map((items) {
                        return Container(
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(9.0),
                                  topRight: Radius.circular(9.0),
                                ),
                                child: Image.asset(
                                  items.img,
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                  height: 200,
                                ),
                              )),
                              Container(
                                height: 30,
                                // margin: EdgeInsets.only(bottom: 20),
                                margin: EdgeInsets.only(left: 10),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Lorem ipsum dolor sit amet",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 10),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_border,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15, bottom: 2),
                                child: Text(
                                  "Lorem ",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 7),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15, bottom: 2),
                                child: Text(
                                  "₹ 456",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 12),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            bottomRight:
                                                Radius.circular(10.0))),
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(top: 3),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 15, top: 5),
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
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 25,
              color: Colors.white,
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

            SizedBox(
              height: 15,
            ),

//FEATURED PRODUCT

            Container(
              height: 305,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "FEATURED PRODUCT",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    height: 270,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: firstImgList.map((items) {
                        return Container(
                          child: Card(
                            child: Image.asset(
                              items.img,
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            margin: EdgeInsets.all(5),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 25,
              color: Colors.white,
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
    );
  }
}
