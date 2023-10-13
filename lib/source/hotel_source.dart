import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotelio/model/hotel.dart';

class HotelSource {
  static Future<List> getHotel() async {
    var result = await FirebaseFirestore.instance.collection('Hotel').get();
    return result.docs.map((e) => Hotel.fromJson(e.data())).toList();
  }
}
