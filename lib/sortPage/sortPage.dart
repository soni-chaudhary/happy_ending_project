import 'package:flutter/material.dart';

class SortPage extends StatelessWidget {
  @override
  int id = 0;
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(
                      Icons.sort_outlined,
                      color: Colors.grey.shade900,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Sort",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            sortElements(id: id, value: 1, txt: "Price - Hight to Low"),
            Container(
              color: Colors.blueGrey,
              height: .5,
            ),
            sortElements(id: id, value: 2, txt: "Price - Low to Hight"),
            Container(
              color: Colors.blueGrey,
              height: .5,
            ),
            sortElements(id: id, value: 3, txt: "Newest"),
            Container(
              color: Colors.blueGrey,
              height: .5,
            ),
            sortElements(id: id, value: 4, txt: "Popularity"),
          ],
        ),
      ),
    );
  }
}

class sortElements extends StatelessWidget {
  const sortElements({
    required this.id,
    required this.value,
    required this.txt,
  });

  final int id;
  final String txt;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              txt,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade900,
              ),
            ),
            Radio(
              fillColor:
                  MaterialStateColor.resolveWith((states) => Colors.grey),
              value: value,
              groupValue: id,
              onChanged: (val) {},
            ),
          ],
        ),
      ),
    );
  }
}
