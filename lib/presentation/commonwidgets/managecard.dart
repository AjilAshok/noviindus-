import 'package:flutter/material.dart';

class BusmanentCard extends StatelessWidget {
  const BusmanentCard({super.key,required this.imageurl,required this.onPressed,required this.subtile,required this.title,required this.buttontext});
  final String imageurl;
  final String title;
  final String subtile;
  final String buttontext;
  final void Function() onPressed;


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
                  imageurl,
                  height: 100,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Axiforma',
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtile,
                    style: const TextStyle(
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
                      fixedSize: const Size(80, 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: onPressed,
                  child:  Text(
                    buttontext,
                    style:const TextStyle(
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