import 'package:flutter/material.dart';
import 'package:solar/constants.dart';
import 'package:solar/page/charging_page.dart';

import '../widget/menu_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<MenuItemModel> choices = <MenuItemModel>[
      MenuItemModel(
          "ХООЛНЫ\nГАЗАР",
          Icons.food_bank,
          () async => {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const CustomerListPage(
                //               isSaleMode: true,
                //             )))
              }),
      MenuItemModel(
          "УНДАГ ДУГУЙ\nSCOOTER ЦЭНЭГЛЭХ",
          Icons.charging_station,
          () async => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChargingPage()))
              }),
      MenuItemModel(
          "КОфЕ\nSHOP",
          Icons.coffee,
          () async => {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const CustomerListPage(
                //               isSaleMode: true,
                //             )))
              }),
      MenuItemModel("ҮЗВЭР\nҮЙЛЧИЛГЭЭ", Icons.theater_comedy, () => {}),
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home",
            style: TextStyle(fontSize: FONT_LG),
          ),
        ),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(SPACE_LG),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: SPACE_LG),
                    child: Text(""),
                  ),
                  GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: choices.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: SPACE_LG,
                            mainAxisSpacing: SPACE_LG),
                    itemBuilder: (BuildContext context, int index) {
                      return MenuItemWidget(choices[index]);
                    },
                  ),
                ],
              )),
        ));
  }
}
