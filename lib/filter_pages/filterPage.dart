import 'package:flutter/material.dart';
import 'package:happyendingapp/Widgets/vertical_tabs.dart';
import 'package:happyendingapp/screens/cardScreen.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<FilterPage>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  int pageCount = 0;
  late TabController _tabController;
  PageController _pagesController = PageController();
  @override
  void initState() {
    _tabController = TabController(vsync: this, initialIndex: 0, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.filter_alt_rounded,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Filter",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 20),
            child: Text(
              "Clear All",
              style: TextStyle(
                color: Color.fromARGB(255, 10, 137, 99),
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: VerticalTabs(
          indicatorColor: Colors.black,
          tabsWidth: width * 0.4,
          backgroundColor: Colors.white,
          selectedTabTextStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
          tabBackgroundColor: Colors.grey.shade300,
          tabTextStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
          tabsElevation: 10,
          selectedTabBackgroundColor: Colors.white,
          contentScrollAxis: Axis.vertical,
          tabs: <Tab>[
            Tab(
              height: 30,
              child: Container(
                height: 50,
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Products",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
            ),
            Tab(
              height: 30,
              child: Container(
                height: 50,
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Themes",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
            ),
            Tab(
              height: 30,
              child: Container(
                height: 50,
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Size",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
            ),
            Tab(
              height: 30,
              child: Container(
                height: 50,
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Prices",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
            ),
          ],
          contents: <Widget>[
            Container(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: const Text(
                      "Apple",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    trailing: Checkbox(
                      value: true,
                      activeColor: Colors.black,
                      onChanged: (bool) {},
                    ),
                  );
                },
              ),
            ),
            Container(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: const Text(
                      "Banana",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    trailing: Checkbox(
                      value: true,
                      activeColor: Colors.black,
                      onChanged: (bool) {},
                    ),
                  );
                },
              ),
            ),
            Container(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: const Text(
                      "Mango",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    trailing: Checkbox(
                      value: true,
                      activeColor: Colors.black,
                      onChanged: (bool) {},
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Price Slider",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
      // body: Expanded(
      //   child: Row(children: <Widget>[
      //     SizedBox(
      //       width: 150,
      //       child: ListView.separated(
      //           itemCount: pageCount,
      //           itemBuilder: (BuildContext context, int index) {
      //             return GestureDetector(
      //               onTap: () {
      //                 setState(() {
      //                   selectedIndex = index;
      //                   _pagesController.jumpToPage(index);
      //                 });
      //               },
      //               child: Container(
      //                 child: Row(children: [
      //                   AnimatedContainer(
      //                     duration: Duration(milliseconds: 500),
      //                     height: (selectedIndex == index) ? 50 : 0,
      //                     width: 5,
      //                     color: Colors.grey,
      //                   ),
      //                   Expanded(
      //                       child: Container(
      //                     color: (selectedIndex == index)
      //                         ? Colors.grey
      //                         : Colors.transparent,
      //                     child: Padding(
      //                       padding: const EdgeInsets.symmetric(
      //                           vertical: 10, horizontal: 5),
      //                       child: Text("tab $index"),
      //                     ),
      //                   )),
      //                 ]),
      //               ),
      //             );
      //           },
      //           separatorBuilder: (BuildContext context, int index) {
      //             return SizedBox(height: 5);
      //           }),
      //     ),
      //     // Expanded(
      //     //     child: Container(
      //     //   child: PageView(
      //     //     controller: _pagesController,
      //     //     children: [
      //     //       for (var i = 0; i < pageCount; i++)
      //     //         Container(
      //     //           color: Colors.blue,
      //     //           child: Text("Page $i"),
      //     //         ),
      //     //     ],
      //     //   ),
      //     // ),),
      //   ]),
      // ),
      bottomNavigationBar:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: Color.fromARGB(179, 209, 207, 207))),
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "CLOSE",
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
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: Color.fromARGB(179, 209, 207, 207))),
            child: Material(
              color: Colors.white,
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
                          color: Color.fromARGB(255, 5, 134, 65),
                          fontWeight: FontWeight.bold),
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
