import 'package:flutter/material.dart';
import 'package:noname_layout_study_2/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 120, maxWidth: 700),
      child: Padding(
        padding: const EdgeInsets.all(Constants.kPadding * 2),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search a book",
            fillColor: Colors.black.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.search),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: Constants.kPadding,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
