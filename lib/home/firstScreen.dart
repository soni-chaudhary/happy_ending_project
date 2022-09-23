import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
    Topimage(img: "images/tha.jpg"),
    Topimage(img: "images/doll.jpg"),
    Topimage(img: "images/chesh.jpg"),
    Topimage(img: "images/knu.jpg"),
    Topimage(img: "images/gray_toy.jpg"),
    Topimage(img: "images/man.jpg"),
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
                        ));
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
