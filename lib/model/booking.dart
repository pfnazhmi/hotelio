class Booking {
  String id;
  String idHotel;
  String cover;
  String name;
  String location;
  String date;
  int guest;
  String breakfast;
  String checkInTime;
  int night;
  int serviceFee;
  int activities;
  int totalPayment;
  String status;
  bool isDone;

  Booking({
    required this.id,
    required this.idHotel,
    required this.cover,
    required this.name,
    required this.location,
    required this.date,
    required this.guest,
    required this.breakfast,
    required this.checkInTime,
    required this.night,
    required this.serviceFee,
    required this.activities,
    required this.totalPayment,
    required this.status,
    required this.isDone,
  });
}
