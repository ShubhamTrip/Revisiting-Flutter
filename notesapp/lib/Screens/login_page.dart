// ignore_for_file: await_only_futures, use_build_context_synchronously, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:notesapp/supabaseNet.dart';

class LoginPage extends StatelessWidget {
  SupabaseNet supabaseNet = SupabaseNet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(50),
            child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: () async {
                      await supabaseNet.signUpId(
                          'coderinside16@gmail.com', '12345678');

                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            SizedBox(width: 10),
                            Text('Sign into to Supabase',
                                style: TextStyle(color: Colors.amber))
                          ],
                        ))))));
  }
}
