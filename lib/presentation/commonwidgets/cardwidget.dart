import 'package:flutter/material.dart';

class DriverCard extends StatelessWidget {
  const DriverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
          color: const Color(0xFF2B2B2B),
          borderRadius: BorderRadius.circular(10)),
      height: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Rohit Sharma',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'Axiforma',
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 8),
                Text(
                  'License no: PJ515196161655',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Axiforma',
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
         
          Image.asset(
            'assets/99-996004_get-driving-directions-car-driver-removebg-preview 1.png',
            height: 150,
          )
        ],
      ),
    );
  }
}
