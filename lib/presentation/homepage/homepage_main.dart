import 'package:flutter/material.dart';
import 'package:pra/presentation/busmange/busmanagepage.dart';
import 'package:pra/presentation/commonwidgets/managecard.dart';
import 'package:pra/presentation/driverlist/driver_list.dart';
import 'package:pra/presentation/drivermangement/driver_manage.dart';

class HomagePage extends StatelessWidget {
  const HomagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 120,
        backgroundColor: const Color(0xFFF2B2B2B),
        title: Image.asset(
          'assets/logo.png',
          height: 100,
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BusManage(),
                  ));
                },
                child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: const HomepageCard(
                      height: 100,
                      title: 'Bus',
                      color: Color(0xFFFC153B),
                      subTitle: 'Manage your Bus',
                      imagurl: 'assets/image 2.png',
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DriverList(),
                  ));
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: const HomepageCard(
                    height: 150,
                    title: 'Driver',
                    subTitle: 'Manage you Drive',
                    color: Color(0xfff2b2b2b),
                    imagurl:
                        'assets/99-996004_get-driving-directions-car-driver-removebg-preview 1.png',
                  ),
                ),
              )
            ],
          ),
          //  :
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              '21 Drivers Found',
              style: TextStyle(
                  color: Color(0xFF6B6B6B),
                  fontSize: 13,
                  fontFamily: 'Axiforma',
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
              child: BusmanentCard(
            title: 'KSRTC',
            subtile: 'Switf Scania P- Series',
            imageurl: 'assets/image 3.png',
            buttontext: 'Manage',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DriverManage(),));
            },
          ))
        ],
      ),
    );
  }
}

class HomepageCard extends StatelessWidget {
  const HomepageCard(
      {super.key,
      required this.color,
      required this.imagurl,
      required this.subTitle,
      required this.height,
      required this.title});
  final String title;
  final String subTitle;
  final Color color;
  final String imagurl;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      height: 200,
      width: MediaQuery.of(context).size.width / 2,
      child: Expanded(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontFamily: 'Axiforma',
                        letterSpacing: 1,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    subTitle,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Axiforma',
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 120,
                  width: 185,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      imagurl,
                      height: height,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
