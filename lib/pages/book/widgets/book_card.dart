import 'package:flutter/material.dart';
import 'package:noname_layout_study_2/constants.dart';
import 'package:noname_layout_study_2/models/book_model.dart';

class BookCard extends StatelessWidget {
  final BookModel book;

  const BookCard({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: Constants.kPadding * 3,
        right: Constants.kPadding * 3,
        top: Constants.kPadding,
        bottom: Constants.kPadding,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(book.secondImage, height: 350, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.all(Constants.kPadding),
              child: Text(
                book.title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Text(book.subtitle, style: const TextStyle(fontSize: 14)),
            const SizedBox(height: 10),
            const SingleChildScrollView(
              child: Text(
                """\t\t\tBacon ipsum dolor amet frankfurter tenderloin meatloaf beef kielbasa tail, pork loin t-bone pork. Capicola pork chop cow burgdoggen chuck ham hock prosciutto pig, meatloaf jowl. Tongue meatball flank, pork belly leberkas cow pork chop bacon alcatra sirloin pork loin shoulder jowl porchetta bresaola. Leberkas shank boudin, hamburger picanha flank pastrami buffalo beef ribs strip steak ham hock tail filet mignon. Andouille pork belly burgdoggen leberkas turducken swine turkey. Spare ribs strip steak pastrami bacon pig kevin landjaeger boudin short loin tongue chicken pancetta venison bresaola hamburger. Corned beef frankfurter beef ribs swine sausage ham hock.
\t\t\tBeef hamburger pork kevin short loin sausage. Picanha pig pork corned beef cow chuck frankfurter pork belly bacon. Jerky shankle tri-tip ground round andouille drumstick. Salami shoulder pork spare ribs pancetta short loin buffalo ribeye doner ham hock chislic cow jowl turducken tri-tip. Turducken drumstick beef ham hock, alcatra short ribs prosciutto fatback biltong sirloin bresaola capicola. Fatback prosciutto chislic porchetta tenderloin shoulder brisket pork pancetta swine tail. Tail pig rump swine pastrami sausage capicola pork strip steak prosciutto jerky shoulder.
\t\t\tShank meatball landjaeger, sausage pig alcatra pork chop jowl jerky picanha corned beef pork doner spare ribs. Chislic swine fatback short ribs, kielbasa alcatra filet mignon ham shank. Ribeye pork pork chop tongue, tri-tip pancetta ground round beef ribs venison flank chislic beef meatloaf. Turducken kevin beef pork loin ham hock jowl sausage.""",
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Share"),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  child: const Text("One click purchase"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
