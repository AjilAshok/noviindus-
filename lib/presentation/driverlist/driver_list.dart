import 'package:flutter/material.dart';
import 'package:pra/presentation/adddriver/add_driverpage.dart';
import 'package:pra/presentation/commonwidgets/appbar.dart';
import 'package:pra/presentation/commonwidgets/button.dart';

class DriverList extends StatelessWidget {
  const DriverList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        text: 'Driver List',
        height: 120,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          const Expanded(child: DriverlistCard()),
          Center(
            child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AddDriver(),
                  ));
                },
                text: 'Add Driver',
                textColor: Colors.white,
                backgroundColor: const Color(
                  0xFFFC153B,
                )),
          )
        ],
      ),
    );
  }
}

class DriverlistCard extends StatelessWidget {
  const DriverlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(18),
          height: 85,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color(0XFFF3F3F3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )),
                width: 80,
                child: Image.asset(
                  'assets/Ellipse.png',
                  height: 100,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Rohit Sharma',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Axiforma',
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'License no: PJ515196161655',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Axiforma',
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      fixedSize: const Size(70, 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: const Text(
                    'Delete',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Axiforma',
                        fontWeight: FontWeight.w400),
                  )),
            ],
          ),
        );
      },
    );
  }
}
