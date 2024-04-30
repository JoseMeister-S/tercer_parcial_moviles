import 'package:flutter/material.dart';
import 'package:tercer_parcial/services/firebase_service.dart';
import 'package:tercer_parcial/services/messaging_service.dart';
import 'package:tercer_parcial/services/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FirebaseService.initializeFirebase();

  NotificationService.initializeNotifications();
  MessagingService.setupFirebaseMessaging();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tercer parcial',
      home: Scaffold(
        body: Center(
          child: Text('Ojala Funcione!'),
        ),
      ),
    );
  }
}
