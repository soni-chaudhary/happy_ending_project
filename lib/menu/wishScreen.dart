import 'package:flutter/material.dart';

class WishPage extends StatefulWidget {
  @override
  WishPageState createState() => WishPageState();
}

class WishPageState extends State<WishPage> {
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
            Icons.arrow_back_outlined,
            color: Colors.grey.shade800,
          ),
          onPressed: () {},
        ),
        title: const Text(
          "WISHLIST",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
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
      body: Container(
        padding: EdgeInsets.only(top: width * 0.04),
        // height: 200,
        color: Colors.white,

        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.63,
              crossAxisSpacing: width * 0.02,
              mainAxisSpacing: width * 0.02),
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              child: Card(
                color: Colors.white,
                elevation: 7,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "images/doll.jpg",
                            fit: BoxFit.fitWidth,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 150, top: 5),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.white),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.wrong_location,
                                    color: Colors.grey.shade700,
                                    size: 15,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 160),
                            child: Container(
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(1.5),
                                child: Text(
                                  "LINEN BLEND",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 15, right: 15, top: 5, bottom: 5),
                        child: Text(
                          "Solids: Light pink",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                        child: Text(
                          "Cotton Linen shirts",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                        child: Text(
                          "₹ 1499",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 14),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade300)),
                          margin: EdgeInsets.only(top: 16),
                          child: InkWell(
                            child: Center(
                              child: Text(
                                "MOVE TO CARY",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 15, 178, 129),
                                    fontSize: 15),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        //  GridView.count(
        //   crossAxisCount: 2,
        //   crossAxisSpacing: 3.0,
        //   mainAxisSpacing: 7.0,
        //   childAspectRatio: 0.6,
        //   children: [

        //   ],
        // ),
      ),
    );
  }
}
