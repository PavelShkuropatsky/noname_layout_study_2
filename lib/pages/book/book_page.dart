import 'package:flutter/material.dart';
import 'package:noname_layout_study_2/constants.dart';
import 'package:noname_layout_study_2/models/book_model.dart';
import 'package:noname_layout_study_2/pages/book/widgets/book_card.dart';

class BookPage extends StatefulWidget {
  final BookModel book;

  const BookPage({Key? key, required this.book}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.keyboard_arrow_left_outlined, color: Colors.black87),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(Constants.kPadding),
              child: IconButton(
                onPressed: () => setState(() {
                  widget.book.favorite = !widget.book.favorite;
                }),
                icon: Icon(
                  widget.book.favorite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(child: BookCard(book: widget.book)));
  }
}
