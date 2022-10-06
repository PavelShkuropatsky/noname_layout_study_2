import 'package:flutter/material.dart';
import 'package:noname_layout_study_2/constants.dart';
import 'package:noname_layout_study_2/models/book_model.dart';
import 'package:noname_layout_study_2/pages/book/book_page.dart';

class BookList extends StatelessWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 120, maxWidth: 700),
      child: Container(
        width: double.infinity,
        color: Colors.black.withOpacity(0.1),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                List.generate(BookModel.books.length, (index) => _BookItem(index: index, book: BookModel.books[index])),
          ),
        ),
      ),
    );
  }
}

class _BookItem extends StatelessWidget {
  final int index;
  final BookModel book;

  const _BookItem({super.key, required this.index, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: Constants.kPadding * 2,
        right: Constants.kPadding,
        left: index == 0 ? Constants.kPadding : 0,
      ),
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BookPage(book: book))),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 4,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    book.image,
                    height: 180,
                    width: 120,
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(
              width: 120,
              child: Text(book.title),
            ),
            SizedBox(
              width: 120,
              child: Text(
                book.subtitle,
                style: const TextStyle(fontSize: 10, color: Colors.blueGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
