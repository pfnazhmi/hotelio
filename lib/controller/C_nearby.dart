import 'package:get/get.dart';
import 'package:hotelio/model/hotel.dart';
import 'package:hotelio/source/hotel_source.dart';

class CNearby extends GetxController {
  final _category = 'All Place'.obs;
  String get category => _category.value;
  set category(n) {
    _category.value = n;
    update();
  }

  List<String> get categories =>
      ['All Place', 'Industrial', 'Village', 'Jungle'];

  final _listHotel = <Hotel>[].obs;
  List<Hotel> get listHotel => _listHotel.value;

  getListHotel() async {
    List<dynamic> result = await HotelSource.getHotel();
    _listHotel.value = result.cast<Hotel>();
    update();
  }

  @override
  void onInit() {
    getListHotel();
    super.onInit();
  }
}
