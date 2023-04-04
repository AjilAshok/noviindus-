import 'package:flutter/material.dart';
import 'package:pra/presentation/busmange/widget/seatwidget.dart';
import 'package:pra/presentation/commonwidgets/appbar.dart';
import 'package:pra/presentation/commonwidgets/cardwidget.dart';


class BusManage extends StatelessWidget {
  const BusManage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CustomAppbar(text: 'KSRTC Swift Scania P-​series',height: 120,),
     
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
