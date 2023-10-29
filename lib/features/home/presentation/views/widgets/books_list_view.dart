import 'package:book_wise_app/features/home/presentation/views/book_details_view.dart';
import 'package:book_wise_app/features/home/presentation/views/widgets/animated_books_list_view_item.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatefulWidget {
  const BooksListView({super.key});

  @override
  State<BooksListView> createState() => _BooksListViewState();
}

class _BooksListViewState extends State<BooksListView> {
  final ScrollController booksListViewItemController = ScrollController();

  int firstVisibleItemIndex = 0;
  @override
  void initState() {
    super.initState();
    booksListViewItemControllerListener();
  }

  @override
  void dispose() {
    booksListViewItemController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const BookDetails()));
        },
        child: ListView.builder(
          // prototypeItem: SizedBox(protoType is like give a size to list view items
          //   height: 190,
          //   width: 200,
          // ),

          // itemExtent: 100,//determine the size of the children
          controller: booksListViewItemController,
          scrollDirection: Axis.horizontal,
          itemCount: 50,
          itemBuilder: (context, index) {
            return AnimatedBooksListViewItem(
              firstVisibleItemIndex: firstVisibleItemIndex,
              index: index,
            );
          },
        ),
      ),
    );
  }

  void booksListViewItemControllerListener() {
    booksListViewItemController.addListener(() {
      final currentOffset = booksListViewItemController.offset;
      firstVisibleItemIndex =
          (currentOffset ~/ //149 = current offset of the item until the start of the new item or the width of the item + padding
              149); //.floor(); start from the first offset when the item disappear change the number until it works,
      //by using this we can know the index of the first visible item when scrolling
      setState(() {});
    });
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
