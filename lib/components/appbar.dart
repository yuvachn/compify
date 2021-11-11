import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  MyAppBar(
    this.title, {
    Key? key,
  })  : preferredSize = Size.fromHeight(100.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.centerLeft,
          color: Color(0xFF68DB7F),
          height: size.height * 1,
          width: double.infinity,
          child: Text(
            this.title,
            style: TextStyle(fontSize: 25),
          ),
        ),
        Container(
          height: size.height * .05,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        )
      ],
    );
  }
}
