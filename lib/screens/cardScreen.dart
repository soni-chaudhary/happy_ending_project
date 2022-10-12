import 'dart:ffi';

import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  @override
  CardState createState() => CardState();
}

class CardState extends State<CardScreen> {
  List _listName = ["Miniature", "Bobblehead", "3D Figurine", "Superhero"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.grey.shade800,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Cart",
          style: TextStyle(
              color: Colors.grey.shade800, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.grey.shade800,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Container(
                      height: 130,
                      width: 100,
                      child: Image.asset(
                        "images/tha.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Solids Mandarin Polo: Dusty Peach",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Mandarin Polo",
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 8,
                                  ),
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 1, color: Colors.red)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Siz: S",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.black,
                                          size: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 8,
                                  ),
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 1, color: Colors.red)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Qty: 1",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.black,
                                          size: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Souled Out",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 213, 26, 13),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ 699",
                                    style: TextStyle(
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    "₹ 999",
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        decoration: TextDecoration.lineThrough,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    "30% off",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 225, 143, 121),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(179, 209, 207, 207))),
                      child: Material(
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => FilterPage()));
                          },
                          child: SizedBox(
                            height: 45,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Text(
                                "Remove",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(179, 209, 207, 207))),
                      child: Material(
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => FilterPage()));
                          },
                          child: SizedBox(
                            height: 45,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Text(
                                "Move to Wishlist",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 1,
                color: Colors.grey.shade400,
              ),
              Container(
                height: 18,
                color: Colors.grey.shade300,
              ),
              Container(
                margin: EdgeInsets.only(left: 18, right: 18, top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.local_offer_outlined,
                            color: Colors.grey.shade700),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Apply Coupon",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 15),
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey.shade700,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                color: Colors.grey.shade300,
              ),
              Container(
                margin: EdgeInsets.only(left: 18, right: 18, top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.local_offer_outlined,
                            color: Colors.grey.shade700),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Gift Voucher",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 15),
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey.shade700,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                color: Colors.grey.shade300,
              ),
              Container(
                margin: EdgeInsets.only(left: 18, right: 18, top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.price_change_outlined,
                            color: Colors.grey.shade700),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Gift Wrap (25)",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 15),
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey.shade700,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                color: Colors.grey.shade300,
              ),
              Container(
                margin: EdgeInsets.only(left: 18, right: 18, top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.money, color: Colors.grey.shade700),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "TSS Money/TSS Points",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 15),
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey.shade700,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                color: Colors.grey.shade300,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 30, top: 20, bottom: 8, right: 25),
                child: Text(
                  "Price Details (1 item)",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 8, bottom: 8, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Card Totle",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "₹ 999.00",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 8, bottom: 8, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Discount",
                      style: TextStyle(
                          color: Color.fromARGB(255, 26, 199, 168),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "-₹ 300.00",
                      style: TextStyle(
                          color: Color.fromARGB(255, 26, 199, 168),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 30, top: 8, bottom: 20, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Changes",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Free",
                      style: TextStyle(
                          color: Color.fromARGB(255, 30, 179, 74),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                color: Colors.grey.shade300,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 30, top: 20, bottom: 20, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Totle Amount",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "(incl of all taxes)",
                              style: TextStyle(
                                  color: Colors.grey.shade800, fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "₹ 699",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: Color.fromARGB(179, 209, 207, 207))),
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => FilterPage()));
                },
                child: SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      children: [
                        Text(
                          "₹ 699",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "VIEW DETAILS",
                          style: TextStyle(
                              color: Color.fromARGB(255, 8, 175, 128),
                              fontSize: 8,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: Color.fromARGB(179, 209, 207, 207))),
            child: Material(
              color: Colors.red,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CardScreen()));
                },
                child: SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "APPLY",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
