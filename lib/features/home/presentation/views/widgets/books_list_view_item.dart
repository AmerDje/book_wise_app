import 'package:book_wise_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        width: 140,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(Assets.jungleBook))),
        child: Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: () {},
            child: const CircleAvatar(
              radius: 26,
              child: Icon(
                FontAwesomeIcons.readme,
                size: 26,
              ),
            ),
          ),
        ));
  }
}
// class BooksListItem extends StatelessWidget {
//   const BooksListItem({
//     super.key,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(6.0),
//         child: Image.asset(
//           Assets.jungleBook,
//         ),
//       ),
//     );
//   }
// }
