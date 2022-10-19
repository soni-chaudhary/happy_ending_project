import 'package:flutter/material.dart';
import 'package:happyendingapp/home/product_list.dart';
import 'package:happyendingapp/screens/cardScreen.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                Container(
                  height: 470,
                  padding: EdgeInsets.only(
                      top: width * 0.08,
                      left: width * 0.04,
                      right: width * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.of(context).pop(),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(70)),
                                    color: Colors.white),
                                child: const Icon(Icons.arrow_back_outlined,
                                    size: 22, color: Colors.black),
                              ),
                            ),
                            Container(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(70)),
                                          color: Colors.white),
                                      child: const Icon(Icons.favorite_border,
                                          size: 22, color: Colors.black),
                                    ),
                                    SizedBox(width: width * 0.02),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(60)),
                                          color: Colors.white),
                                      child: const Icon(
                                        Icons.shopify_sharp,
                                        size: 22,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ]),
                            )
                          ]),
                      Container(
                        height: 25,
                        color: Colors.transparent,
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
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lorem ipsum dolor sit",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.04),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share,
                            size: 18,
                            color: Colors.grey,
                          )),
                      Text("SHARE",
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 30,
              ),
              child: Text(
                "Lorem ipsum dolor sit",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 10),
              child: Text(
                "₹ 999",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 10),
              child: Text(
                "Lorem ipsum dolor sit",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: width * 0.04),
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
                  Expanded(
                    child: Container(
                      height: 35,
                      // width: 180,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5))),
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text("♥ WISHLIST",
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.04),
                  Expanded(
                    child: Container(
                      height: 35,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                        color: Colors.red,
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
                        child: const Text("ADD TO CART",
                            style: TextStyle(fontSize: 15)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Text(
                "Lorem ipsum dolor sit",
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: width * 0.02),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 60,
                  margin: const EdgeInsets.only(left: 30, bottom: 20, top: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade600, width: 1),
                    borderRadius: const BorderRadius.all(
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
                  margin: const EdgeInsets.only(left: 15, bottom: 20, top: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade600, width: 1),
                    borderRadius: const BorderRadius.all(
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
                  margin: const EdgeInsets.only(left: 15, bottom: 20, top: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade600, width: 1),
                    borderRadius: const BorderRadius.all(
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
                  margin: const EdgeInsets.only(left: 15, bottom: 20, top: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade600, width: 1),
                    borderRadius: const BorderRadius.all(
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
            SizedBox(height: width * 0.02),
            Container(
              color: Colors.grey.shade300,
              height: 3,
            ),
            Container(
              color: Colors.grey.shade100,
              height: 13,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Text(
                "Lorem ipsum ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 20, right: 20),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,\n when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(height: width * 0.04),
            Container(
              color: Colors.grey.shade300,
              height: 3,
            ),
            Container(
              color: Colors.grey.shade100,
              height: 8,
            ),
            SizedBox(height: width * 0.02),
            Container(
              height: 325,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
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
                    width: width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: topSelling.map((items) {
                        return Container(
                          margin: const EdgeInsets.all(5),
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
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(9.0),
                                  topRight: Radius.circular(9.0),
                                ),
                                child: Image.asset(
                                  items.img,
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                  height: 200,
                                ),
                              ),
                              Container(
                                height: 30,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.02),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Lorem ipsum dolor ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 14),
                                    ),
                                    Icon(
                                      Icons.favorite_border,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.02),
                                child: const Text(
                                  "Lorem ",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.02),
                                child: const Text(
                                  "₹ 456",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                              ),
                              SizedBox(height: width * 0.02),
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
