import 'package:flutter/material.dart';
import 'package:happyendingapp/home/productList.dart';
import 'package:happyendingapp/screens/cardScreen.dart';

class ProductDetailPage extends StatefulWidget {
  // late final String img;
  // ProductDetailPage(String img) {
  //   this.img = img;
  // }
  @override
  ProductDetailPageState createState() => ProductDetailPageState();
}

class Topimage {
  final String img;
  const Topimage({required this.img});
}

class ProductDetailPageState extends State<ProductDetailPage> {
  int _currentColor = 0;
  List<Topimage> firstImgList = [
    Topimage(img: "images/doll.jpg"),
    Topimage(img: "images/gray_toy.jpg"),
    Topimage(img: "images/chesh.jpg"),
    Topimage(img: "images/knu.jpg"),
    Topimage(img: "images/tha.jpg"),
    Topimage(img: "images/man.jpg"),
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
  Widget build(BuildContext cxt) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   leading: Container(
      //     height: 30,
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.all(Radius.circular(70)),
      //         color: Colors.white),
      //     child: IconButton(
      //       icon: Icon(Icons.arrow_back_outlined, color: Colors.black),
      //       onPressed: () {
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) => ProductList()));
      //       },
      //     ),
      //   ),
      //   actions: [
      //     Container(
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.all(Radius.circular(70)),
      //           color: Colors.white),
      //       child: IconButton(
      //         icon: Icon(Icons.favorite_border, color: Colors.black),
      //         onPressed: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => ProductList()));
      //         },
      //       ),
      //     ),
      //     Container(
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.all(Radius.circular(50)),
      //           color: Colors.white),
      //       child: IconButton(
      //         icon: Icon(
      //           Icons.shopify_sharp,
      //           color: Colors.black,
      //         ),
      //         onPressed: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => ProductList()));
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "images/doll.jpg",
                  height: 470,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Container(
                    color: Colors.red,
                    child: Text("Lorem ipsum"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(70)),
                                color: Colors.white),
                            child: IconButton(
                              icon: Icon(Icons.arrow_back_outlined,
                                  size: 20, color: Colors.black),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductList()));
                              },
                            ),
                          ),
                          Container(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 27,
                                    width: 27,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(70)),
                                        color: Colors.white),
                                    child: IconButton(
                                      icon: Icon(Icons.favorite_border,
                                          size: 18, color: Colors.black),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ProductList()));
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 27,
                                    width: 27,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(60)),
                                        color: Colors.white),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.shopify_sharp,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ProductList()));
                                      },
                                    ),
                                  ),
                                ]),
                          )
                        ]),
                  ),
                ),
              ],
            ),
            Container(
              height: 25,
              color: Colors.white,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: firstImgList.map((item) {
                    int index = firstImgList.indexOf(item);
                    return Container(
                      height: 6,
                      width: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentColor == index
                              ? Color.fromRGBO(0, 0, 0, 0.9)
                              : Color.fromRGBO(0, 0, 0, 0.4)),
                    );
                  }).toList()),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Lorem ipsum dolor sit",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              size: 15,
                              color: Colors.grey,
                            )),
                        Text("SHARE",
                            style: TextStyle(color: Colors.grey, fontSize: 13)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Container(
                child: Text(
                  "Lorem ipsum dolor sit",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: Container(
                child: Text(
                  "₹ 999",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                child: Text(
                  "Lorem ipsum dolor sit",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              color: Colors.grey.shade300,
              height: 2,
            ),
            Container(
              color: Colors.grey.shade100,
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, bottom: 10),
              child: Container(
                child: Text(
                  "Lorem ipsum dolor",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 180,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text("♥ WISHLIST",
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 35,
                    width: 190,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      // border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CardScreen()));
                      },
                      child:
                          Text("ADD TO CART", style: TextStyle(fontSize: 15)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Container(
                child: Text(
                  "Lorem ipsum dolor sit",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    margin: EdgeInsets.only(left: 30, bottom: 20, top: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade600, width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("X",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 15)),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    margin: EdgeInsets.only(left: 15, bottom: 20, top: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade600, width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("X",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 15)),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    margin: EdgeInsets.only(left: 15, bottom: 20, top: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade600, width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("X",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 15)),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    margin: EdgeInsets.only(left: 15, bottom: 20, top: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade600, width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("X",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 15)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey.shade300,
              height: 3,
            ),
            Container(
              color: Colors.grey.shade100,
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Container(
                child: Text(
                  "Lorem ipsum ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, right: 20),
              child: Container(
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,\n when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.grey.shade300,
              height: 3,
            ),
            Container(
              color: Colors.grey.shade100,
              height: 8,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 325,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 10),
                    child: Text(
                      "Loren ipsum",
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
                                margin: EdgeInsets.only(left: 15, bottom: 20),
                                child: Text(
                                  "₹ 456",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 12),
                                ),
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
          ],
        ),
      ),
    );
  }
}
