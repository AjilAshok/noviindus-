import 'package:flutter/material.dart';

class HollowCube extends StatelessWidget {
  final double size;
  final double padding;

  HollowCube({required this.size, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: size,
      width: size,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xFFFC153B),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: padding,
            left: padding,
            right: padding,
            child: Container(
              height: padding * 1.5,
              decoration: const BoxDecoration(
                color: Color(0xFFFC153B),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(40),
                ),
              ),
            ),
          ),

          // Left side
          Positioned(
            top: padding,
            bottom: padding,
            left: padding,
            child: Container(
              width: padding * 1.5,
              decoration: const BoxDecoration(
                color: Color(0xFFFC153B),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(40),
                ),
              ),
            ),
          ),

          // Right side
          Positioned(
            top: padding,
            bottom: padding,
            right: padding,
            child: Container(
              width: padding * 1.5,
              decoration: const BoxDecoration(
                color: Color(0xFFFC153B),
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(40),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
