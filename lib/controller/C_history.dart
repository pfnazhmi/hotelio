import 'package:get/get.dart';
import 'package:hotelio/model/booking.dart';
import 'package:hotelio/source/booking_source.dart';

class CHistory extends GetxController {
  final _listBooking = <Booking>[].obs;
  List<Booking> get listBooking => _listBooking.value;

  getListBooking(String id) async {
    _listBooking.value = await BookingSource.getHistory(id);
    update();
  }
}
