import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tercer_parcial/api/firebase_api.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseApi firebaseApi = FirebaseApi();
  await firebaseApi.initNotifications();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
