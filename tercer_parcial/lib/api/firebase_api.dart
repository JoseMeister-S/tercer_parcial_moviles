import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMessagingManager {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  void initializeMessaging(Function(String, String) onMessageReceived) async {
    final notificationSettings =
        await _firebaseMessaging.requestPermission(provisional: true);
    print("Notification permission status: ${notificationSettings.alert}");

    _firebaseMessaging.getToken().then((fcmToken) {
      print('FCM Token: $fcmToken');
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Received message data: ${message.data}');
      print('Received message title: ${message.notification?.title}');
      onMessageReceived(
          message.notification?.title ?? "", message.notification?.body ?? "");
    });
  }
}
