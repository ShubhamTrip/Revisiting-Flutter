// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import "package:supabase_flutter/supabase_flutter.dart";

const supabaseUrl = 'https://bcdqrcwvtqbeknkafree.supabase.co';
const supabaseKey = String.fromEnvironment(
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJjZHFyY3d2dHFiZWtua2FmcmVlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Njc2NDg1NzgsImV4cCI6MTk4MzIyNDU3OH0.2DVyfsmG5GBvyDqor3lr5vdbvtNG7XAqiPe56NtayfY');

Future<void> main() async {
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
  // ignore: prefer_const_constructors
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
