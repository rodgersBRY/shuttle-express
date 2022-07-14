import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shuttle_express/utils/app_layout.dart';
import 'package:shuttle_express/utils/app_styles.dart';
import 'package:shuttle_express/widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headlineStyle1.copyWith(
              fontSize: AppLayout.getHeight(35),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: const EdgeInsets.all(2.5),
            child: Row(
              children: [
                /*
                // airline tickets
                 */
                Container(
                  width: size.width * .44,
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(10),
                  ),
                  child: const Center(child: Text("Airline tickets")),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(50))),
                  ),
                ),
                /*
                // hotels
                 */
                Expanded(
                  child: Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(10),
                    ),
                    child: const Center(child: Text("Hotels")),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(AppLayout.getHeight(50))),
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFf4F6FD),
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(50),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
        ],
      ),
    );
  }
}
