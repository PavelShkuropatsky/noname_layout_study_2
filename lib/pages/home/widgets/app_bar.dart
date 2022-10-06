import 'package:flutter/material.dart';
import 'package:noname_layout_study_2/constants.dart';

class HomeAppBar extends AppBar {
  HomeAppBar({super.key})
      : super(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: false,
            title: Image.asset(
              "assets/images/amazon.png",
              height: 25,
            ),
            actions: [
              const Padding(
                  padding: EdgeInsets.all(Constants.kPadding),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.jpeg"),
                  ))
            ]);
}
