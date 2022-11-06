import 'package:flutter/material.dart';
import 'package:notesapp/supabaseNet.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SupabaseNet supabaseNet = SupabaseNet();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.black,
          title: Text('Notes'),
        ),
        body: SafeArea(
            // child: Container(
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         margin: EdgeInsets.all(10),
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: Color.fromARGB(255, 189, 212, 245),
            //         ),
            //         height: 120,
            //         padding: EdgeInsets.all(12),
            //         width: double.infinity,
            //         child: Column(
            //           children: [
            //             Text('hello',
            //                 style: TextStyle(
            //                     fontSize: 16, fontWeight: FontWeight.w500)),
            //             SizedBox(
            //               height: 10,
            //             ),
            //             Text(
            //                 'hello',
            //                 style: TextStyle(
            //                     fontSize: 16, fontWeight: FontWeight.w300))
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            ));
  }
}
