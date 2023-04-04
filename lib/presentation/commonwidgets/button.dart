import 'package:flutter/material.dart';
import 'package:pra/presentation/adddriver/add_driverpage.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor,required this.onPressed});
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final void Function () onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              fixedSize: const Size(316, 58),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddDriver(),
                ));
          },
          child: Text(
            text.toString(),
            style: TextStyle(
                color: textColor,
                fontSize: 22,
                fontFamily: 'Axiforma',
                letterSpacing: 1,
                fontWeight: FontWeight.w500),
          )),
    );
  }
}
