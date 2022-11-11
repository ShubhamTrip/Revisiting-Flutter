// ignore_for_file: depend_on_referenced_packages

// ignore: unnecessary_import
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = 'https://bcdqrcwvtqbeknkafree.supabase.co';
const supabaseKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJjZHFyY3d2dHFiZWtua2FmcmVlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Njc2NDg1NzgsImV4cCI6MTk4MzIyNDU3OH0.2DVyfsmG5GBvyDqor3lr5vdbvtNG7XAqiPe56NtayfY';

class SupabaseNet {
  final clients = SupabaseClient(supabaseUrl, supabaseKey);

  Future<void> signUpId(String emailid, String passwords) async {
    await clients.auth.signUp(email: emailid, password: passwords);
  }

  Future<void> signIn(String email, String password) async {
    final response =
        await clients.auth.signInWithPassword(email: email, password: password);

    final Session? session = response.session;
    final User? user = response.user;
  }

  getData() async {
    var response = await clients.from('noteapp').select('*');
    return response;
  }

  addData(var title, var content) async {
    final data = await clients
        .from('noteapp')
        .insert({'title': '${title}', 'content': '${content}'});
  }
}
