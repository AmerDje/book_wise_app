import 'package:book_wise_app/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatefulWidget {
  const BooksListView({super.key});

  @override
  State<BooksListView> createState() => _BooksListViewState();
}

class _BooksListViewState extends State<BooksListView> {
  final ScrollController controller = ScrollController();

  int firstVisibleItemIndex = 0;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      final currentOffset = controller.offset;
      firstVisibleItemIndex = (currentOffset ~/
          104); //.floor(); start from the first offset when the item disappear change the number until it works,
      //by using this we can know the index of the first visible item when scrolling
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //this or expanded to solve render box error
      height: 150,
      child: ListView.builder(
        controller: controller,
        // itemExtent: 100,//determine the size of the children
        scrollDirection: Axis.horizontal,
        itemCount: 50,
        itemBuilder: (context, index) {
          return AnimatedPadding(
              duration: const Duration(milliseconds: 200),
              padding: EdgeInsets.symmetric(
                horizontal: index == firstVisibleItemIndex ? 1 : 5,
                vertical: index == firstVisibleItemIndex ? 0.5 : 4,
              ),
              child: const BooksListViewItem());
        },
      ),
    );
  }
}

// class ListItem extends StatelessWidget {
//   const ListItem({super.key, required this.height});
//  final double height;
//   @override
//   Widget build(BuildContext context) {
//     List listItemsFull = [1, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3];
//     List<Widget> listItems = [];
//     listItemsFull.forEach((post) {

//       listItems.add(SizedBox(height: height, child: BooksListViewItem()));
//     });
//     return Wrap(
//       spacing: 5,
//       children: listItems,
//     );
//   }
// }
