import 'package:flutter/material.dart';

class OrderManage extends StatefulWidget {
  @override
  OrderManageState createState() => OrderManageState();
}

class OrderManageState extends State<OrderManage> {
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

        // leading: Builder(builder: (BuildContext context) {
        //   return Container(
        //     color: Colors.blue,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         IconButton(
        //           icon: Icon(
        //             Icons.arrow_back_outlined,
        //             color: Colors.grey.shade800,
        //           ),
        //           onPressed: () {},
        //         ),
        //         SizedBox(
        //           width: 20,
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.only(),
        //           child: CircleAvatar(
        //             radius: 40,
        //             child: ClipRRect(
        //               borderRadius: BorderRadius.circular(30.0),
        //               child: Image.asset(
        //                 'images/koala.jpg',
        //                 fit: BoxFit.cover,
        //                 height: 60,
        //                 width: 60,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   );
        // }),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_rounded,
              color: Colors.grey.shade800,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  "Manage order Easily",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700,
                      fontSize: 18),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey.shade100,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(179, 247, 247, 247)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5, top: 5),
                      child: Text(
                        "My Account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 115,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade100,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(179, 247, 247, 247)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.add_location_outlined,
                            color: Colors.grey,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 5, top: 5),
                            child: Text(
                              "Track",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 115,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade100,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(179, 247, 247, 247)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.arrow_right_alt_outlined,
                            color: Colors.grey,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 5, top: 5),
                            child: Text(
                              "Return",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 115,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade100,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(179, 247, 247, 247)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.delete_forever_outlined,
                            color: Colors.grey,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 5, top: 5),
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 10,
              color: Colors.grey.shade200,
            ),
            Stack(
              children: [
                Container(
                  height: 90,
                  color: Color.fromARGB(255, 10, 151, 127),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                    child: Center(
                      child: Text(
                        "What can we help you with today",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 55,
                    left: 25,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade300,
                        ),
                        color: Colors.grey.shade100),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.all(15),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "Plese select your query.",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          dropdownColor: Colors.white,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 28,
                          ),
                          isExpanded: true,
                          onChanged: (newValue) {
                            setState(() {});
                          },
                          items: _listName.map((item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 10,
              color: Colors.grey.shade200,
            ),
            Expanded(
              child: Container(
                color: Color.fromRGBO(243, 255, 250, 1),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 100, bottom: 40, top: 30),
                      child: Center(
                        child: Text(
                          "Need More help? Get in touch.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      height: 5,
                      color: Colors.grey.shade200,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 30,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.shade100,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: 15, right: 15, bottom: 8, top: 20),
                            child: Text(
                              "Speak With Us",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade700,
                                  fontSize: 14),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 15, right: 15, bottom: 2, top: 15),
                            child: Text(
                              "022-68493328",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade500,
                                  fontSize: 13),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 15, right: 15, bottom: 5, top: 5),
                            child: Text(
                              "Mon-sun: 9:00 AM to 8:00 PM",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade500,
                                  fontSize: 13),
                            ),
                          ),
                          Container(
                            width: 140,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey.shade100,
                              ),
                              borderRadius: BorderRadius.circular(40),
                              color: Color.fromARGB(255, 10, 151, 127),
                            ),
                            margin: EdgeInsets.only(
                                left: 15, right: 15, bottom: 5, top: 15),
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Call Us",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
