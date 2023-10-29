import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hotelio/model/booking.dart';

class BookingSource {
  static Future<Booking?> checkIsBooked(String userID, String hotelID) async {
    var result = await FirebaseFirestore.instance
        .collection('User')
        .doc(userID)
        .collection("Booking")
        .where("id_hotel", isEqualTo: hotelID)
        .where("is_done", isEqualTo: false)
        .get();
    if (result.size > 0) {
      return Booking.fromJson(result.docs[0].data());
    }
    return null;
  }
}
