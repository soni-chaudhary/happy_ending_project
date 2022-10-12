import 'package:flutter/material.dart';

class MyAccountPage extends StatefulWidget {
  @override
  MyAccountPageState createState() => MyAccountPageState();
}

class MyAccountPageState extends State<MyAccountPage> {
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
          "MY ACCOUNT",
          style: TextStyle(
              color: Colors.grey.shade800,
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_rounded,
                color: Colors.grey.shade800,
              ))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  radius: 45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      'images/koala.jpg',
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "RAUNAK CHATTERJEE",
                          style: TextStyle(
                              color: Color.fromARGB(255, 21, 165, 122),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        child: Text(
                          "(Non-Exclusive Member)",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11),
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Container(
                        child: Text(
                          "Get Exclusive Membership Now",
                          style: TextStyle(
                              color: Colors.red,
                              // fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontSize: 11),
                        ),
                      )
                    ]),
              ),
            ],
          ),
          Container(
            height: 3,
            color: Color.fromARGB(255, 21, 165, 122),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Text(
                  "Profile",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                dropdownColor: Colors.white,
                icon: Icon(
                  Icons.keyboard_arrow_right,
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
          Container(
            height: 1,
            color: Colors.grey.shade300,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Text(
                  "My Orders",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                dropdownColor: Colors.white,
                icon: Icon(
                  Icons.keyboard_arrow_right,
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
          Container(
            height: 1,
            color: Colors.grey.shade300,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Text(
                  "Address Book",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                dropdownColor: Colors.white,
                icon: Icon(
                  Icons.keyboard_arrow_right,
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
          Container(
            height: 1,
            color: Colors.grey.shade300,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Text(
                  "Gift Voucher",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                dropdownColor: Colors.white,
                icon: Icon(
                  Icons.keyboard_arrow_right,
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
          Container(
            height: 1,
            color: Colors.grey.shade300,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Text(
                  "Gift Voucher",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                dropdownColor: Colors.white,
                icon: Icon(
                  Icons.keyboard_arrow_right,
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
          Container(
            height: 1,
            color: Colors.grey.shade300,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey.shade700)),
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                "LOG OUT",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
