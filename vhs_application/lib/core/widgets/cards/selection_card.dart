import 'package:flutter/material.dart';

class SelectionCard extends StatefulWidget {
  @override
  State<SelectionCard> createState() => _SelectionCardState();
}

class _SelectionCardState extends State<SelectionCard> {
  Color borderColor1 = Colors.white;
  Color borderColor2 = Colors.red;
  Color temp = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                temp = borderColor1;
                borderColor1 = borderColor2;
                borderColor2 = temp;
              });
            },
            child: Card(
              color: Colors.black,
              shape:
                  RoundedRectangleBorder(side: BorderSide(color: borderColor1)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "3 Days Free",
                            style: TextStyle(
                                fontSize: 21,
                                color: Color.fromARGB(255, 156, 156, 156),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "then \$29.99 / year",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 156, 156, 156),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.grey,
                      width: 1,
                      height: 28,
                    ),
                    Text(
                      "\$3.33 / month",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 156, 156, 156),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                temp = borderColor1;
                borderColor1 = borderColor2;
                borderColor2 = temp;
              });
            },
            child: Card(
              color: Colors.black,
              shape:
                  RoundedRectangleBorder(side: BorderSide(color: borderColor2)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "3 Days Free",
                            style: TextStyle(
                                fontSize: 21,
                                color: Color.fromARGB(255, 156, 156, 156),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "then \$7.99 / month",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 156, 156, 156),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.grey,
                      width: 1,
                      height: 28,
                    ),
                    Text(
                      "\$7.99 / month",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 156, 156, 156),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
