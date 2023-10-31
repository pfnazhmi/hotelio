import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelio/config/app_asset.dart';
import 'package:hotelio/controller/C_history.dart';
import 'package:hotelio/controller/C_user.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final cHistoy = Get.put(CHistory());
  final cUser = Get.put(CUser());

  @override
  void initState() {
    cHistoy.getlistBooking(cUser.data.id!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [],
    );
  }

  Padding header(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(AppAssets.profile,
                width: 50, height: 50, fit: BoxFit.cover),
          ),
          Column(
            children: [
              Text(
                "Near Me",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.w900),
              ),
              const Text(
                '100 Hotels',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
