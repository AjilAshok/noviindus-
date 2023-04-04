import 'package:flutter/material.dart';
import 'package:pra/presentation/commonwidgets/cardwidget.dart';
import 'package:pra/presentation/homepage/widget/seatwidget.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 120,
        backgroundColor: Color(0xFFF2B2B2B),
        title: Text(
          'KSRTC Swift Scania P-​series',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Axiforma',
              letterSpacing: 1,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.white),
      ),
      body: Column(
        children: const [
        DriverCard(),
          SeatView()
        ],
      ),
    );
  }
}

class SeatView extends StatelessWidget {
  const SeatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: Row(
              children: [
                HollowCube(
                  padding: 1,
                  size: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                HollowCube(
                  padding: 1,
                  size: 40,
                ),
                const SizedBox(
                  width: 55,
                ),
                HollowCube(
                  padding: 1,
                  size: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                HollowCube(
                  padding: 1,
                  size: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                HollowCube(
                  padding: 1,
                  size: 40,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
