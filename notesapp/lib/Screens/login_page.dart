// ignore_for_file: await_only_futures, use_build_context_synchronously, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, unused_import, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:notesapp/Screens/sign_up.dart';
import 'package:notesapp/constants.dart';
import 'homepage.dart';
import 'package:notesapp/supabaseNet.dart';

class LoginPage extends StatelessWidget {
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
            padding: EdgeInsets.all(50),
            child: Align(
                alignment: Alignment.center,
                child: ListView(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Text(
                        'Welcome, Login',
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
                        child: Icon(Icons.person,
                            color: Colors.blueGrey, size: 50),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 260,
                      child: TextField(
                        controller: controller,
                        style: TextStyle(color: Colors.black),
                        decoration: kInputDecorantion,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 260,
                      child: TextField(
                        controller: passcontroller,
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: kInputDecorantion,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          await supabaseNet.signIn(
                              controller.text, passcontroller.text);

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                Text('Sign In',
                                    style: TextStyle(color: Colors.white))
                              ],
                            ))),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      child: Container(
                          child: ListTile(
                        leading: Text('New Here? Register.'),
                        // trailing: Container(child: Image.asset(''),),
                        isThreeLine: false,
                      )),
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()))
                      },
                    )
                  ],
                ))));
  }
}
