import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelio/controller/C_home.dart';
import 'package:hotelio/model/hotel.dart';
import 'package:hotelio/page/home_page.dart';
import 'package:hotelio/widget/button_custom.dart';

class CheckoutSucces extends StatelessWidget {
  CheckoutSucces({super.key});

  @override
  Widget build(BuildContext context) {
    final cHome = Get.put(CHome());
    Hotel hotel = ModalRoute.of(context)?.settings.arguments as Hotel;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 6, color: Colors.white),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                hotel.cover,
                width: 190,
                height: 190,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Payment Success",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Enjoy your a whole new experience\nin this beautiful world",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(17, 17, 17, 1),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ButtonCustom(
            label: "View My Booking",
            onTap: () {
              cHome.indexPage = 1;
              Get.offAll(() => HomePage());
            },
          ),
        ],
      ),
    );
  }
}
