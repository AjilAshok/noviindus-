import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pra/presentation/drivermangement/driver_manage.dart';
import 'package:http/http.dart' as http;
import 'package:pra/presentation/homepage/homepage_main.dart';
import 'package:pra/presentation/splashscreen/splash_screen.dart';

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
                    color: const Color(0xFFFC153B),
                  ))
            ],
          ),
          Textform(),
          Passwordform(),
          Container(
            margin: const EdgeInsets.only(top: 180),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFC153B),
                    fixedSize: const Size(316, 58),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () async {
                  final response = await http.post(
                    Uri.parse('http://flutter.noviindus.co.in/api/LoginApi'),
                    body: {
                      'username': 'admin_user',
                      'password': '123admin789',
                    },
                  );

                  if (response.statusCode == 200) {
                    final responseData = json.decode(response.body);
                    final apiKey = responseData['refresh'];
                    final accessToken = responseData['access'];
                    print(apiKey);
                    print(accessToken);
                    // print(response.body);

                    print('innn');
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomagePage(),
                        ));
                    // Authentication successful
                    // Parse the API key and token from the response body
                    // Save the API key and token to your app's state
                  } else {
                    print('out');
                    // Authentication failed
                    // Show an error message to the user
                  }

                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => HomePage(),
                  //     ));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
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

class Passwordform extends StatelessWidget {
  const Passwordform({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        ))))));
  }
}

class Textform extends StatelessWidget {
  const Textform({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        ))))));
  }
}
