import 'package:flutter/material.dart';
//import 'package:hotelio/config/app_asset.dart';
//import 'package:hotelio/config/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        //   body: Stack(
        //     fit: StackFit.expand,
        //     children: [
        //       Image.asset(
        //         AppAssets.bgIntro,
        //         fit: BoxFit.cover,
        //       ),
        //       Container(
        //         decoration: const BoxDecoration(
        //             gradient: LinearGradient(
        //                 begin: Alignment.bottomCenter,
        //                 end: Alignment.topCenter,
        //                 colors: [Colors.black, Colors.transparent])),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.fromLTRB(16, 0, 16, 40),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.end,
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Text(
        //               "Your Great Life\nStart Here",
        //               style: Theme.of(context).textTheme.headlineMedium!.copyWith(
        //                     color: Colors.white,
        //                     fontWeight: FontWeight.w900,
        //                   ),
        //             ),
        //             const SizedBox(
        //               height: 8,
        //             ),
        //             Text(
        //               "More then just a hotel",
        //               style: Theme.of(context).textTheme.titleMedium!.copyWith(
        //                   color: Colors.white, fontWeight: FontWeight.w300),
        //             ),
        //             const SizedBox(
        //               height: 30,
        //             ),
        //             SizedBox(
        //               height: 50,
        //               child: Stack(
        //                 children: [
        //                   Material(
        //                     color: AppColor.primary,
        //                     borderRadius: BorderRadius.circular(20),
        //                     child: InkWell(
        //                       borderRadius: BorderRadius.circular(20),
        //                       onTap: () => {},
        //                       child: Container(
        //                         width: double.infinity,
        //                         padding: const EdgeInsets.symmetric(
        //                             horizontal: 36, vertical: 12),
        //                         child: const Text(
        //                           "Get Started",
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                             fontSize: 16,
        //                             fontWeight: FontWeight.w900,
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   )
        //                 ],
        //               ),
        //             )
        //           ],
        //         ),
        //       )
        //     ],
        //   ),
        );
  }
}
