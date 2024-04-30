
import 'package:firebase_messaging/firebase_messaging.dart';
Future<void> handelBackgroundMessage(RemoteMessage message) async{
  print('Salio el mensaje');

}

class FirebaseApi{
  final firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    await firebaseMessaging.requestPermission();
    final fCMToken = await firebaseMessaging.getToken();
    print(fCMToken);
    FirebaseMessaging.onBackgroundMessage(handelBackgroundMessage);
  }
}