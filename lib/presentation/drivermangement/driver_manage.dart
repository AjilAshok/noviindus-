import 'package:flutter/material.dart';
import 'package:pra/presentation/commonwidgets/appbar.dart';
import 'package:pra/presentation/commonwidgets/cardwidget.dart';
import 'package:pra/presentation/driverlist/driver_list.dart';

import '../busmange/widget/seatwidget.dart';

class DriverManage extends StatelessWidget {
  const DriverManage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        text: 'KSRTC Swift Scania P-​series',
        height: 120,
      ),
      body: Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DriverList(),
                    ));
              },
              child: const DriverCard()),
          const SeatView(),
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
                  width: 15,
                ),
                HollowCube(
                  padding: 1,
                  size: 40,
                ),
                const SizedBox(
                  width: 15,
                ),
                HollowCube(
                  padding: 1,
                  size: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
