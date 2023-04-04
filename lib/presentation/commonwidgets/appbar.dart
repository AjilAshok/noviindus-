import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.text, required this.height});
  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 120,
      backgroundColor: const Color(0xFFF2B2B2B),
      title: Text(
        text.toString(),
        style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Axiforma',
            letterSpacing: 1,
            fontWeight: FontWeight.w500),
      ),
      centerTitle: true,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
