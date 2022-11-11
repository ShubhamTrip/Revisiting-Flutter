// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/supabaseNet.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SupabaseNet supabaseNet = SupabaseNet();
  List res = [];
  @override
  void initState() {
    super.initState();
    response();
  }

  response() async {
    var resp = await supabaseNet.getData();

    setState(() {
      res = resp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.black,
          title: Text('Notes'),
          centerTitle: true,
          leading: GestureDetector(
            child: Icon(Icons.notes, color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                res.length == 0
                    ? Expanded(
                        child: Center(
                            child: CircularProgressIndicator(
                                color: Colors.lightBlue[900])),
                      )
                    : Expanded(
                        child: ListView.builder(
                            itemCount: res.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                  padding: EdgeInsets.only(
                                      top: 10, left: 10, right: 10),
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 189, 212, 245),
                                    ),
                                    padding: EdgeInsets.all(12),
                                    width: double.infinity,
                                    child: Column(
                                      children: [
                                        Text('${res[index]['title']}',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500)),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('${res[index]['content']}',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300))
                                      ],
                                    ),
                                  ));
                            }))
              ],
            ),
          ),
        ));
  }
}
