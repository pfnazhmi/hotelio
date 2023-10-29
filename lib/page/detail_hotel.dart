import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelio/config/app_asset.dart';
import 'package:hotelio/config/app_color.dart';
import 'package:hotelio/config/app_format.dart';
import 'package:hotelio/config/app_route.dart';
import 'package:hotelio/model/booking.dart';
import 'package:hotelio/model/hotel.dart';
import 'package:hotelio/page/checkout_page.dart';
import 'package:hotelio/widget/button_custom.dart';

class DetailHotel extends StatelessWidget {
  DetailHotel({super.key});

  final Rx<Booking> _bookedData = initBooking.obs;
  Booking get bookedData => _bookedData.value;
  set bookedData(Booking n) => _bookedData.value = n;

  final List facilities = [
    {
      'icon': AppAssets.iconCoffee,
      'label': 'Lounge',
    },
    {
      'icon': AppAssets.iconOffice,
      'label': 'Office',
    },
    {
      'icon': AppAssets.iconWifi,
      'label': 'Wi-Fi',
    },
    {
      'icon': AppAssets.iconStore,
      'label': 'Store',
    }
  ];

  @override
  Widget build(BuildContext context) {
    Hotel hotel = ModalRoute.of(context)?.settings.arguments as Hotel;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text(
          "Hotel Details",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF111111),
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: Colors.grey[100]!, width: 1.5),
            )),
        height: 80,
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      AppFormat.currency(hotel.price.toDouble()),
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: AppColor.secondary,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "/Night",
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            ButtonCustom(
              label: "Booking Now",
              onTap: () {
                Navigator.pushReplacementNamed(context, AppRoute.checkout);
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24))),
        child: ListView(
          children: [
            const SizedBox(
              height: 24,
            ),
            images(hotel),
            const SizedBox(
              height: 16,
            ),
            name(hotel, context),
            const SizedBox(
              height: 16,
            ),
            description(hotel),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Facilities",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            gridFacilities(),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Activities",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            activities(hotel),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  SizedBox activities(Hotel hotel) {
    return SizedBox(
      height: 105,
      child: ListView.builder(
        itemCount: hotel.activities.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Map activity = hotel.activities[index];
          return Padding(
            padding: EdgeInsets.fromLTRB(
              index == 0 ? 16 : 8,
              0,
              index == hotel.activities.length - 1 ? 16 : 8,
              0,
            ),
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      activity['image'],
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(activity['name'])
              ],
            ),
          );
        },
      ),
    );
  }

  GridView gridFacilities() {
    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      itemCount: facilities.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[200]!),
              borderRadius: BorderRadius.circular(24)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ImageIcon(AssetImage(facilities[index]['icon'])),
            const SizedBox(
              height: 4,
            ),
            Text(
              facilities[index]['label'],
              style: const TextStyle(fontSize: 13),
            )
          ]),
        );
      },
    );
  }

  Padding description(Hotel hotel) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(hotel.description),
    );
  }

  Padding name(Hotel hotel, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotel.name,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                Text(
                  hotel.location,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: AppColor.starActive,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            hotel.rate.toString(),
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  SizedBox images(Hotel hotel) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
          itemCount: hotel.images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(index == 0 ? 16 : 8, 0,
                  index == hotel.images.length - 1 ? 16 : 8, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  hotel.images[index],
                  fit: BoxFit.cover,
                  height: 180,
                  width: 240,
                ),
              ),
            );
          })),
    );
  }
}
