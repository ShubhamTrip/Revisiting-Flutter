// ignore_for_file: prefer_const_constructors, unused_import, unused_local_variable

import 'package:flutter/material.dart';
import "package:supabase_flutter/supabase_flutter.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized()
  
  await dotenv.load();
  
  String supabaseUrl = dotenv.env["SUPABASE_URL"] ?? "";
  String supabasekey =  dotenv.env["SUPABASE_KEY"] ?? "";

  runApp(const NotesApp());
}

class NotesApp extends StatefulWidget {
  const NotesApp({super.key});

  @override
  State<NotesApp> createState() => _NotesAppState();
}

class _NotesAppState extends State<NotesApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            toolbarHeight: 50,
            title: Text(
              'Notes App',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: ListView(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.amber,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.black,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.red,
              )
            ],
          )),
    );
  }
}
