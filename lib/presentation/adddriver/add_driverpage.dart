import 'package:flutter/material.dart';
import 'package:pra/presentation/commonwidgets/appbar.dart';
import 'package:pra/presentation/commonwidgets/button.dart';

class AddDriver extends StatelessWidget {
  const AddDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        text: 'Add Driver',
        height: 120,
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF2A2A2A1A),
                    borderRadius:  BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 5),
                      child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              label: Center(
                                child: Text(
                                  'Enter Name',
                                  style: TextStyle(
                                      color: Color(0xFF707070),
                                      fontSize: 20,
                                      fontFamily: 'Axiforma',
                                      fontWeight: FontWeight.w500),
                                ),
                              )))))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF2A2A2A1A),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 5),
                      child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              label: Center(
                                child: Text(
                                  'Enter Liscense Number',
                                  style: TextStyle(
                                      color: Color(0xFF707070),
                                      fontSize: 20,
                                      fontFamily: 'Axiforma',
                                      fontWeight: FontWeight.w500),
                                ),
                              )))))),
          const Spacer(),
          CustomButton(
            onPressed: () {},
            text: 'Save',
            backgroundColor: const Color(
              0xFFFC153B,
            ),
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
