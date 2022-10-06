import 'package:flutter/material.dart';
import 'package:noname_layout_study_2/constants.dart';

class BookshelfHeader extends StatelessWidget {
  const BookshelfHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: Constants.kPadding * 2,
        top: Constants.kPadding,
      ),
      child: Text(
        "Bookshelf",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
    );
  }
}

class WelcomeFlutterHeader extends StatelessWidget {
  const WelcomeFlutterHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Constants.kPadding * 2,
        vertical: Constants.kPadding,
      ),
      child: Text(
        "Welcome Flutter Mappers",
        style: TextStyle(
          color: Colors.black54,
          fontSize: 14,
        ),
      ),
    );
  }
}
