import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/supabaseNet.dart';

import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  SupabaseNet supabaseNet = SupabaseNet();
  TextEditingController controller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 0,
        ),
        body: Container(
            padding: const EdgeInsets.all(50),
            child: Align(
                alignment: Alignment.center,
                child: ListView(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Text(
                        'Register',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w400,
                            color: Colors.blueGrey),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    UnconstrainedBox(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(100)),
                        child: const Icon(Icons.person,
                            color: Colors.blueGrey, size: 50),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 260,
                      child: TextField(
                        controller: controller,
                        style: const TextStyle(color: Colors.black),
                        decoration: kInputDecorantion,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 260,
                      child: TextField(
                        controller: passcontroller,
                        obscureText: true,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: kInputDecorantion,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          await supabaseNet.signUpId(
                              controller.text, passcontroller.text);

                          // ignore: use_build_context_synchronously
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                const Text('Sign Up',
                                    style: TextStyle(color: Colors.white))
                              ],
                            ))),
                  ],
                ))));
  }
}
