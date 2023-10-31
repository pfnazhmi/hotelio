import 'package:get/get.dart';
import 'package:hotelio/model/booking.dart';
import 'package:hotelio/model/hotel.dart';
import 'package:hotelio/source/booking_source.dart';
import 'package:hotelio/source/hotel_source.dart';

class CHistory extends GetxController {
  final _listBooking = <Booking>[].obs;
  List<Booking> get listBooking => _listBooking.value;

  getlistBooking(String id) async {
    List<Booking> result = await BookingSource.getHistory(id);
    update();
  }
}
