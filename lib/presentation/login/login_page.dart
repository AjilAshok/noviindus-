import 'package:flutter/material.dart';
import 'package:pra/data/repository.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController password = TextEditingController();
     TextEditingController usename = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
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
            Textform(usename: usename,),
            Passwordform(password: password,),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFC153B),
                      fixedSize: const Size(316, 58),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      Repositry().login(usename, password);

                    }
                    // final response = await http.post(
                    //   Uri.parse('http://flutter.noviindus.co.in/api/LoginApi'),
                    //   body: {
                    //     'username': 'admin_user',
                    //     'password': '123admin789',
                    //   },
                    // );

                    // if (response.statusCode == 200) {
                    //   final responseData = json.decode(response.body);
                    //   final apiKey = responseData['refresh'];
                    //   final accessToken = responseData['access'];
                    //   print(apiKey);
                    //   print(accessToken);
                    //   // print(response.body);

                    //   print('innn');
                    //   Navigator.pushReplacement(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => HomagePage(),
                    //       ));
                    //   // Authentication successful
                    //   // Parse the API key and token from the response body
                    //   // Save the API key and token to your app's state
                    // } else {
                    //   print('out');
                    //   // Authentication failed
                    //   // Show an error message to the user
                    // }
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
      ),
    );
  }
}

class Passwordform extends StatelessWidget {
  const Passwordform({
    Key? key,required this.password
  }) : super(key: key);
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    
    return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF2A2A2A1A),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller:password ,
                    decoration: const InputDecoration(
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
    Key? key,required  this.usename
  }) : super(key: key);
  final TextEditingController usename;

  @override
  Widget build(BuildContext context) {
    
    return Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF2A2A2A1A),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: usename,
                    decoration: const InputDecoration(
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
