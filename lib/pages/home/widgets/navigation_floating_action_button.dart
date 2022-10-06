import 'package:flutter/material.dart';
import 'package:noname_layout_study_2/constants.dart';

class HomeNavigationFloatingActionButton extends StatefulWidget {
  const HomeNavigationFloatingActionButton({Key? key}) : super(key: key);

  @override
  State<HomeNavigationFloatingActionButton> createState() => _HomeNavigationFloatingActionButtonState();
}

class _HomeNavigationFloatingActionButtonState extends State<HomeNavigationFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => const Scaffold(body: _ModalBottomSheet()),
        );
      },
      backgroundColor: Colors.white,
      child: const Icon(
        Icons.list_alt_rounded,
        color: Colors.blue,
      ),
    );
  }
}

class _ModalBottomSheet extends StatelessWidget {
  const _ModalBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text("Shop by", style: TextStyle(color: Colors.black54)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Category",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.search, color: Colors.deepOrange),
              ],
            ),
            const SizedBox(height: Constants.kPadding),
            const _CategoryItem(category: "Books", iconData: Icons.book, iconBackgroundColor: Colors.blue),
            const _CategoryItem(
                category: "Video Games", iconData: Icons.sports_esports, iconBackgroundColor: Colors.deepOrange),
            const _CategoryItem(category: "Music & Movies", iconData: Icons.movie, iconBackgroundColor: Colors.blue),
            const _CategoryItem(
                category: "Grocery", iconData: Icons.local_grocery_store, iconBackgroundColor: Colors.cyan),
            _CategoryItem(
                category: "Health & Beauty", iconData: Icons.healing, iconBackgroundColor: Colors.yellow.shade700),
            const _CategoryItem(
                category: "Sports", iconData: Icons.sports_basketball_rounded, iconBackgroundColor: Colors.red),
          ],
        ),
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final String category;
  final IconData iconData;
  final Color iconBackgroundColor;

  const _CategoryItem({Key? key, required this.category, required this.iconData, required this.iconBackgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Constants.kPadding),
      child: InkWell(
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(_CategoryItemSnackBar(
          category: category,
          iconData: iconData,
        )),
        borderRadius: BorderRadius.circular(25),
        child: SizedBox(
          width: double.infinity,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: Constants.kPadding * 2,
            children: [
              CircleAvatar(
                backgroundColor: iconBackgroundColor,
                child: Icon(iconData, color: Colors.white),
              ),
              Text(
                category,
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoryItemSnackBar extends SnackBar {
  final String category;
  final IconData iconData;

  _CategoryItemSnackBar({Key? key, required this.category, required this.iconData})
      : super(
          behavior: SnackBarBehavior.floating,
          padding: const EdgeInsets.all(Constants.kPadding * 2),
          duration: const Duration(seconds: 1),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(iconData, color: Colors.grey),
              const SizedBox(width: 20),
              Text(category),
            ],
          ),
        );
}
