import 'package:flutter/material.dart';

import '../constants.dart';

class MenuItemModel {
  final String title;
  final IconData icon;
  final Function onTap;

  MenuItemModel(this.title, this.icon, this.onTap);
}

class MenuItemWidget extends StatelessWidget {
  final MenuItemModel data;

  const MenuItemWidget(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(BORDER_RADIUS_MD),
      color: Colors.blue,
      child: InkWell(
        splashColor: kSplashColor,
        splashFactory: InkRipple.splashFactory,
        onTap: () {
          data.onTap();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(data.icon, size: ICON_SIZE_LG),
            const SizedBox(height: SPACE_SM),
            Text(
              data.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: FONT_SM,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
