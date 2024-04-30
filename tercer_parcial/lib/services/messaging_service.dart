import 'package:tercer_parcial/api/firebase_api.dart';
import 'notification_service.dart';

class MessagingService {
  static void setupFirebaseMessaging() {
    try {
      FirebaseMessagingManager()
          .initializeMessaging(NotificationService.displayNotification);
    } catch (e) {
      print("Failed to initialize Firebase Messaging: $e");
    }
  }
}
