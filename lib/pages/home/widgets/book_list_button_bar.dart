import 'package:flutter/material.dart';
import 'package:noname_layout_study_2/constants.dart';

class BookListButtonBar extends StatelessWidget {
  const BookListButtonBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 120, maxWidth: 700),
      child: Container(
        width: double.infinity,
        color: Colors.black.withOpacity(0.1),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: Constants.kPadding,
                horizontal: Constants.kPadding * 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        behavior: SnackBarBehavior.floating,
                        content: Text("Best Sellers pushed"),
                        duration: Duration(milliseconds: 300),
                      ),
                    ),
                    child: const Text(
                      "Best Sellers",
                      style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                    onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        behavior: SnackBarBehavior.floating,
                        content: Text("See all pushed"),
                        duration: Duration(milliseconds: 300),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: Constants.kPadding,
                      ),
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(5, 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text("See all"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
