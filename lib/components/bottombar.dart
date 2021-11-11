import 'package:flutter/material.dart';
import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';

class MyBottombar extends StatefulWidget {
  MyBottombar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyBottombarState createState() => _MyBottombarState();
}

class _MyBottombarState extends State<MyBottombar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavBar(
      actionButton: CurvedActionBar(
          onTab: (value) {
            /// perform action here
            print(value);
          },
          activeIcon: Container(
            padding: EdgeInsets.all(8),
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: Icon(
              Icons.camera_alt,
              size: 50,
              color: Colors.orange,
            ),
          ),
          inActiveIcon: Container(
            padding: EdgeInsets.all(8),
            decoration:
                BoxDecoration(color: Colors.white70, shape: BoxShape.circle),
            child: Icon(
              Icons.photo,
              size: 50,
              color: Colors.orange,
            ),
          ),
          text: "Camera"),
      activeColor: Colors.white,
      navBarBackgroundColor: Color(0xFF68DB7F),
      inActiveColor: Colors.black45,
      appBarItems: [
        FABBottomAppBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            inActiveIcon: Icon(
              Icons.home,
              color: Colors.black26,
            ),
            text: 'Home'),
        FABBottomAppBarItem(
            activeIcon: Icon(
              Icons.wallet_giftcard,
              color: Colors.blue,
            ),
            inActiveIcon: Icon(
              Icons.wallet_giftcard,
              color: Colors.black26,
            ),
            text: 'Wallet'),
      ],
      bodyItems: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.grey,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.pinkAccent,
        )
      ],
      actionBarView: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
      ),
    );
  }
}
