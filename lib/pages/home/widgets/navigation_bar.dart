import 'package:flutter/material.dart';

class HomeNavigationBar extends BottomAppBar {
  HomeNavigationBar({super.key})
      : super(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.message_outlined)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.add_shopping_cart)),
            ),
          ],
        ));
}
