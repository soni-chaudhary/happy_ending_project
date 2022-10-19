import 'package:flutter/material.dart';

class NewArrivalPage extends StatefulWidget {
  const NewArrivalPage({super.key});

  @override
  SecondPageState createState() => SecondPageState();
}

class SecondPageState extends State<NewArrivalPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                Icons.card_travel,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(top: width * 0.04),
          color: Colors.white,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.63,
                crossAxisSpacing: width * 0.02,
                mainAxisSpacing: width * 0.02),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(9.0),
                        topRight: Radius.circular(9.0),
                      ),
                      child: Image.asset(
                        "images/thd.jpg",
                        fit: BoxFit.cover,
                        width: width,
                        height: 200,
                      ),
                    ),
                    SizedBox(height: width * 0.01),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Lorem ipsum dolor sit",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12),
                              ),
                              Icon(
                                Icons.favorite_border,
                                size: 20,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          const Text(
                            "Lorem",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 8),
                          ),
                          SizedBox(height: width * 0.01),
                          const Text(
                            "₹ 456",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 14),
                          ),
                          SizedBox(height: width * 0.04)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0))),
                          width: width,
                          child: const Center(
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 8,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}

// class arrivalCard extends StatelessWidget {
//   const arrivalCard({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.white,
//       elevation: 5,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(
//           Radius.circular(10),
//         ),
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.all(
//           Radius.circular(10),
//         ),
//         child: Stack(children: <Widget>[
//           Image.asset(
//             "images/tha.jpg",
//             height: 190,
//             width: 200,
//             fit: BoxFit.fitWidth,
//           ),
//           Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   height: 30,
//                   // margin: EdgeInsets.only(bottom: 20),
//                   margin: EdgeInsets.only(left: 10),

//                   child: Row(
//                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Lorem ipsum dolor sit amet",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             fontSize: 10),
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(
//                           Icons.favorite_border,
//                           size: 20,
//                           color: Colors.black,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(left: 10, bottom: 2),
//                   child: Text(
//                     "Lorem ipsum dolor sit amet",
//                     style:
//                         TextStyle(color: Colors.black, fontSize: 7),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(left: 10, bottom: 2),
//                   child: Text(
//                     "₹ 456",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         fontSize: 12),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 15, left: 10),
//                   child: Text(
//                     "Lorem ipsum dolor sit amet",
//                     style:
//                         TextStyle(color: Colors.black, fontSize: 7),
//                   ),
//                 ),
//               ]),
//         ]),
//       ),
//     );
//   }
// }
