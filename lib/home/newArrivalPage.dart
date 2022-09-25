import 'package:flutter/material.dart';

class NewArrivalPage extends StatefulWidget {
  @override
  SecondPageState createState() => SecondPageState();
}

class SecondPageState extends State<NewArrivalPage> {
  // late final List<NewArrivalModel> _arrivalCard = [
  //   NewArrivalModel(
  //       img: "images/knu.jpg",
  //       prise: "₹ 456",
  //       like: "Lorem ipsum dolor sit amet",
  //       loram: "Lorem ipsum dolor sit",
  //       lorans: "Lorem ipsum dolor sit",
  //       icons: (Icons.favorite_border) as Icons),
  //   NewArrivalModel(
  //       img: "images/lego.png",
  //       prise: "₹ 456",
  //       like: "Lorem ipsum dolor sit amet",
  //       loram: "Lorem ipsum dolor sit",
  //       lorans: "Lorem ipsum dolor sit",
  //       icons: (Icons.favorite_border) as Icons),
  //   NewArrivalModel(
  //       img: "images/thb.jpg",
  //       prise: "₹ 466",
  //       like: "Lorem ipsum dolor sit amet",
  //       loram: "Lorem ipsum dolor sit",
  //       lorans: "Lorem ipsum dolor sit",
  //       icons: (Icons.favorite_border) as Icons),
  //   NewArrivalModel(
  //       img: "images/thd.jpg",
  //       prise: "₹ 699",
  //       like: "Lorem ipsum dolor sit amet",
  //       loram: "Lorem ipsum dolor sit",
  //       lorans: "Lorem ipsum dolor sit",
  //       icons: (Icons.favorite_border) as Icons),
  //   NewArrivalModel(
  //       img: "images/koala.jpg",
  //       prise: "₹ 499",
  //       like: "Lorem ipsum dolor sit amet",
  //       loram: "Lorem ipsum dolor sit",
  //       lorans: "Lorem ipsum dolor sit",
  //       icons: (Icons.favorite_border) as Icons),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          backgroundColor: Colors.white,
          title: Text(
            "New Arrival",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
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
        body: Container(
          color: Colors.white,
          child: GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.7,
            children: <Widget>[
              Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: Stack(children: <Widget>[
                    Image.asset(
                      "images/tha.jpg",
                      height: 190,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                            margin: EdgeInsets.only(left: 10, bottom: 2),
                            child: Text(
                              "Lorem ipsum dolor sit amet",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 7),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, bottom: 2),
                            child: Text(
                              "₹ 456",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15, left: 10),
                            child: Text(
                              "Lorem ipsum dolor sit amet",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 7),
                            ),
                          ),
                        ]),
                  ]),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Stack(children: <Widget>[
                    Image.asset(
                      "images/thd.jpg",
                      height: 190,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                            margin: EdgeInsets.only(left: 10, bottom: 2),
                            child: Text(
                              "Lorem ipsum dolor sit amet",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 7),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, bottom: 2),
                            child: Text(
                              "₹ 456",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15, left: 10),
                            child: Text(
                              "Lorem ipsum dolor sit amet",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 7),
                            ),
                          ),
                        ]),
                  ]),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Stack(children: <Widget>[
                    Image.asset(
                      "images/doll.jpg",
                      height: 190,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                            margin: EdgeInsets.only(left: 10, bottom: 2),
                            child: Text(
                              "Lorem ipsum dolor sit amet",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 7),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, bottom: 2),
                            child: Text(
                              "₹ 456",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15, left: 10),
                            child: Text(
                              "Lorem ipsum dolor sit amet",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 7),
                            ),
                          ),
                        ]),
                  ]),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Stack(children: <Widget>[
                    Image.asset(
                      "images/tha.jpg",
                      height: 190,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                            margin: EdgeInsets.only(left: 10, bottom: 2),
                            child: Text(
                              "Lorem ipsum dolor sit amet",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 7),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, bottom: 2),
                            child: Text(
                              "₹ 456",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15, left: 10),
                            child: Text(
                              "Lorem ipsum dolor sit amet",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 7),
                            ),
                          ),
                        ]),
                  ]),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Stack(children: <Widget>[
                    Image.asset(
                      "images/thd.jpg",
                      height: 190,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                            margin: EdgeInsets.only(left: 10, bottom: 2),
                            child: Text(
                              "Lorem ipsum dolor sit amet",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 7),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, bottom: 2),
                            child: Text(
                              "₹ 456",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15, left: 10),
                            child: Text(
                              "Lorem ipsum dolor sit amet",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 7),
                            ),
                          ),
                        ]),
                  ]),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Stack(children: <Widget>[
                    Image.asset(
                      "images/doll.jpg",
                      height: 190,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                            margin: EdgeInsets.only(left: 10, bottom: 2),
                            child: Text(
                              "Lorem ipsum dolor sit amet",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 7),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, bottom: 2),
                            child: Text(
                              "₹ 456",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15, left: 10),
                            child: Text(
                              "Lorem ipsum dolor sit amet",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 7),
                            ),
                          ),
                        ]),
                  ]),
                ),
              ),
            ],
          ),
        ));
  }
}
