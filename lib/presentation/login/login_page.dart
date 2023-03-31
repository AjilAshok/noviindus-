import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                color: Color(0xFFF2B2B2B),
              ),
              Positioned(
                  left: 140,
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    color: Colors.red,
                  ))
            ],
          ),
          Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF2A2A2A1A),
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                      child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              label: Center(
                                child: Text(
                                  'Enter Username',
                                  style: TextStyle(
                                      color: Color(0xFF707070),
                                      fontSize: 20,
                                      fontFamily: 'Axiforma',
                                      fontWeight: FontWeight.w500),
                                ),
                              )))))),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF2A2A2A1A),
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                      child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              label: Center(
                                child: Text(
                                  'Enter Password',
                                  style: TextStyle(
                                      color: Color(0xFF707070),
                                      fontSize: 20,
                                      fontFamily: 'Axiforma',
                                      fontWeight: FontWeight.w500),
                                ),
                              )))))),
          Container(
            
            margin: const EdgeInsets.only(top: 180),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFC153B),
                    fixedSize: const Size(316, 58),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => LoginPage(),
                  //     ));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color:Colors.white,
                      fontSize: 22,
                      fontFamily: 'Axiforma',
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                )),
          )
        ],
      ),
    );
  }
}
