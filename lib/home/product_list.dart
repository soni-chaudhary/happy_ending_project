import 'package:flutter/material.dart';
import 'package:happyendingapp/filter_pages/filterPage.dart';
import 'package:happyendingapp/home/firstScreen.dart';
import 'package:happyendingapp/home/product_detail.dart';
import 'package:happyendingapp/sortPage/sortPage.dart';
import '../models/new_arrival_model.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  ProductPageState createState() => ProductPageState();
}

class ProductPageState extends State<ProductList> {
  late final List<NewArrivalModel> _arrivalCard = [
    NewArrivalModel(
      img: "images/doll.jpg",
      prise: "₹ 456",
      like: "Lorem ipsum dolor sit",
      loram: "Lorem ipsum dolor sit",
      lorans: "Lorem ipsum dolor sit",
      // icons: (Icons.favorite_border) as Icons
    ),
    NewArrivalModel(
      img: "images/tha.jpg",
      prise: "₹ 456",
      like: "Lorem ipsum dolor sit",
      loram: "Lorem ipsum dolor sit",
      lorans: "Lorem ipsum dolor sit",
      // icons: (Icons.favorite_border) as Icons
    ),
    NewArrivalModel(
      img: "images/thb.jpg",
      prise: "₹ 466",
      like: "Lorem ipsum dolor sit",
      loram: "Lorem ipsum dolor sit",
      lorans: "Lorem ipsum dolor sit",
      // icons: (Icons.favorite_border) as Icons
    ),
    NewArrivalModel(
      img: "images/thd.jpg",
      prise: "₹ 699",
      like: "Lorem ipsum dolor sit",
      loram: "Lorem ipsum dolor sit",
      lorans: "Lorem ipsum dolor sit",
      // icons: (Icons.favorite_border) as Icons
    ),
    NewArrivalModel(
      img: "images/koala.jpg",
      prise: "₹ 499",
      like: "Lorem ipsum dolor sit",
      loram: "Lorem ipsum dolor sit",
      lorans: "Lorem ipsum dolor sit",
      // icons: (Icons.favorite_border) as Icons
    ),
  ];

  void _addSortPageElement(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return
              // GestureDetector(
              //   // onTap: () {},
              //   child: SortPage(),
              //   behavior: HitTestBehavior.opaque,
              // );
              Container(
            height: 800.0,
            child: SortPage(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData.fallback(),
        backgroundColor: Colors.white,
        title: const Text(
          "New Arrival",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopify_sharp,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                child: Image.asset("images/sell_banner.jpg"),
              ),
            ),
            Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.all(5),
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 0.4,
                  childAspectRatio: 0.7,
                  children: _arrivalCard.map((item) {
                    return arrivalCard(
                        img: item.img,
                        like: item.like,
                        loram: item.loram,
                        lorans: item.lorans,
                        prise: item.prise);
                  }).toList()),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: const Color.fromARGB(179, 209, 207, 207))),
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FilterPage()));
                },
                child: SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.filter_alt_off_outlined,
                        color: Colors.grey.shade900,
                      ),
                      Text(
                        "FILTER",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey.shade900),
                      ),
                    ],
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
                  setState(() {
                    _addSortPageElement(context);
                  });
                },
                child: SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.sort_outlined,
                          color: Colors.grey.shade900,
                        ),
                        Text(
                          "SORT",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey.shade900),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class arrivalCard extends StatelessWidget {
  const arrivalCard(
      {required this.img,
      required this.like,
      required this.loram,
      required this.lorans,
      required this.prise});
  final String img;
  final String prise;
  final String loram;
  final String like;
  final String lorans;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          child: Stack(children: <Widget>[
            Image.asset(
              img,
              height: 180,
              width: 200,
              fit: BoxFit.cover,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    margin: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          like,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 12),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                            size: 20,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, bottom: 2),
                    child: Text(
                      lorans,
                      style: const TextStyle(color: Colors.black, fontSize: 8),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, bottom: 2),
                    child: Text(
                      prise,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 15, left: 10),
                    child: Text(
                      loram,
                      style: const TextStyle(color: Colors.black, fontSize: 8),
                    ),
                  ),
                ]),
          ]),
        ),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProductDetailPage()));
      },
    );
  }
}
