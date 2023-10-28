import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget widget;
  final Icon icon;
  const CustomAppBar({super.key, required this.widget, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget,
          IconButton(padding: EdgeInsets.zero, onPressed: () {}, icon: icon)
        ],
      ),
    );
  }
}
