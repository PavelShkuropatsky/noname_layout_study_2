import 'dart:io';

import "package:flutter/material.dart";
import 'package:noname_layout_study_2/constants.dart';
import 'package:noname_layout_study_2/models/book_model.dart';
import 'package:noname_layout_study_2/pages/book/book_page.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class NewBook extends StatelessWidget {
  const NewBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 120, maxWidth: 700),
      child: InkWell(
        onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => BookPage(book: BookModel.newBook))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Constants.kPadding),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(BookModel.newBook.image, height: 180, width: double.infinity, fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Constants.kPadding * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        BookModel.newBook.title,
                        style: const TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Text(
                        BookModel.newBook.subtitle,
                        style: const TextStyle(color: Colors.blueGrey, fontSize: 10),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: Constants.kPadding, vertical: 2),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.deepOrange,
                      minimumSize: const Size(5, 5),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ),
                    child: const Text("4.9"),
                  ),
                ],
              ),
            ),
            if (kIsWeb || Platform.isAndroid)
              ...[const SizedBox(height: 50)]
            else
              ...[SizedBox(height: MediaQuery.of(context).padding.bottom)],
          ],
        ),
      ),
    );
  }
}
