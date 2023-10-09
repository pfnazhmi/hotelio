class Hotel {
  String id;
  String name;
  String cover;
  String images;
  int price;
  String location;
  int rate;
  String description;
  List<Activity> activities;
  String category;

  Hotel({
    required this.id,
    required this.name,
    required this.cover,
    required this.images,
    required this.price,
    required this.location,
    required this.rate,
    required this.description,
    required this.activities,
    required this.category,
  });
}

class Activity {
  String image;
  String name;

  Activity({
    required this.image,
    required this.name,
  });
}
