import 'package:flutter/material.dart';
import 'package:noname_layout_study_2/pages/home/widgets/app_bar.dart';
import 'package:noname_layout_study_2/pages/home/widgets/book_list.dart';
import 'package:noname_layout_study_2/pages/home/widgets/book_list_button_bar.dart';
import 'package:noname_layout_study_2/pages/home/widgets/header.dart';
import 'package:noname_layout_study_2/pages/home/widgets/icons_list.dart';
import 'package:noname_layout_study_2/pages/home/widgets/navigation_bar.dart';
import 'package:noname_layout_study_2/pages/home/widgets/navigation_floating_action_button.dart';
import 'package:noname_layout_study_2/pages/home/widgets/new_book.dart';
import 'package:noname_layout_study_2/pages/home/widgets/new_book_bar.dart';
import 'package:noname_layout_study_2/pages/home/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            BookshelfHeader(),
            WelcomeFlutterHeader(),
            SearchBar(),
            IconsList(),
            BookListButtonBar(),
            BookList(),
            NewBookBar(),
            NewBook(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const HomeNavigationFloatingActionButton(),
      bottomNavigationBar: HomeNavigationBar(),
    );
  }
}
