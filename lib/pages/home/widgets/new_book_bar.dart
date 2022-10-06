import "package:flutter/material.dart";
import 'package:noname_layout_study_2/constants.dart';

class NewBookBar extends StatelessWidget {
  const NewBookBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 120, maxWidth: 700),
      child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Constants.kPadding * 2,
            vertical: Constants.kPadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Hot New Releases",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          )
      ),
    );
  }
}
