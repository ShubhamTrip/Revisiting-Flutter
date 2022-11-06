import 'package:flutter/material.dart';
import 'package:notesapp/supabaseNet.dart';

class HomePage extends StatelessWidget {
  SupabaseNet supabaseNet = SupabaseNet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
