import 'package:flutter/material.dart';
import 'package:noname_layout_study_2/constants.dart';
import 'package:noname_layout_study_2/models/icon_model.dart';

class IconsList extends StatelessWidget {
  const IconsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Constants.kPadding),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            IconModel.icons.length,
            (index) => SizedBox(
              width: 100,
              child: Column(
                children: [
                  IconButton(
                    iconSize: 50,
                    onPressed: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      behavior: SnackBarBehavior.floating,
                      content: Text(IconModel.icons[index].title),
                      duration: const Duration(milliseconds: 300),
                    )),
                    icon: Image.asset(
                      IconModel.icons[index].icon,
                    ),
                  ),
//                        Image.asset(IconModel.icons[index].icon, height: 50, width: 50,),
                  Text(
                    IconModel.icons[index].title,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
