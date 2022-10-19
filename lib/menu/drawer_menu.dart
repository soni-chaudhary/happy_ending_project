import 'package:flutter/material.dart';
import 'package:happyendingapp/menu/manage_order_screen.dart';
import 'package:happyendingapp/menu/myAccountPage.dart';
import 'package:happyendingapp/menu/wishScreen.dart';

class MenuBar extends StatefulWidget {
  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  List _listName = ["Miniature", "Bobblehead", "3D Figurine", "Superhero"];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Container(
        child: ListView(
          children: [
            Container(
              color: Colors.grey.shade200,
              height: 100,
              // width: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Container(
                  margin:
                      EdgeInsets.only(left: 31, right: 31, top: 25, bottom: 39),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: Colors.red),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Login/",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // DropdownButton(
            //   hint: Text(
            //     "Miniature",
            //     style: TextStyle(color: Colors.grey.shade700),
            //   ),
            //   dropdownColor: Colors.white,
            //   icon: Icon(Icons.arrow_drop_down, color: Colors.grey.shade700),
            //   isExpanded: true,
            //   onChanged: (newValue) {
            //     setState(() {});
            //   },
            //   items: _listName.map((item) {
            //     return DropdownMenuItem(
            //       value: item,
            //       child: Text(
            //         item,
            //         style: TextStyle(color: Colors.black),
            //       ),
            //     );
            //   }).toList(),
            // ),

            listOfMenuBar(
              txt: "Miniature",
            ),
            listOfMenuBar(txt: "Bobblehead"),
            listOfMenuBar(txt: "3D Figurine"),
            listOfMenuBar(txt: "Celebrity"),
            ListTile(
                title: Text(
                  'Order Manage',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderManage()));
                }),
            ListTile(
                title: Text(
                  'Wish List',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WishPage()));
                }),

            ListTile(
                title: Text(
                  'My Account',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyAccountPage()));
                }),
            Container(
              height: 2,
              color: Colors.grey.shade300,
            ),
            Container(
              height: 5,
              color: Colors.grey.shade200,
            ),
            listOfMenuBar(txt: "Shop By Themes"),
            listOfMenuBar(txt: "Celebrity Curations"),

            Container(
              height: 3,
              color: Colors.grey.shade200,
            ),
            Padding(
              padding: EdgeInsets.only(left: 17, top: 20, bottom: 15),
              child: Text(
                "Larem ipsum dolor sit ameconsectetur",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            listOfMenuBar(txt: "Shop By Themes"),
            listOfMenuBar(txt: "Celebrity Curations"),

            Container(
              height: 3,
              color: Colors.grey.shade200,
            ),
            Padding(
              padding: EdgeInsets.only(left: 17, top: 20, bottom: 15),
              child: Text(
                "More",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class listOfMenuBar extends StatelessWidget {
  final String? txt;
  const listOfMenuBar({
    Key? key,
    this.txt,
    // this.pageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        txt!,
        style: TextStyle(color: Colors.grey.shade700),
      ),
      // onTap: () {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => pageName));
      // },
      // leading: Container(child: DropdownButton(items: [],)),
    );
  }
}
