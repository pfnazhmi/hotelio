import 'package:cloud_firestore/cloud_firestore.dart';
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

  static Future<bool> addBooking(String userId, Booking booking) async {
    var ref = FirebaseFirestore.instance
        .collection("User")
        .doc(userId)
        .collection("Booking");
    var docRef = await ref.add(booking.toJson());
    docRef.update({"id": docRef.id});
    return true;
  }

  static Future<List<Booking>> getHistory(String id) async {
    var result = await FirebaseFirestore.instance
        .collection("User")
        .doc(id)
        .collection("Booking")
        .get();
    return result.docs.map((e) => Booking.fromJson(e.data())).toList();
  }
}
