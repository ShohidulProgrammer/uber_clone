import 'package:flutter/material.dart';
import 'package:uber_clone/config/router/router_path_const.dart';
import 'package:uber_clone/src/features/drawer/legal_option.dart';

import 'app_drawer_header.dart';
import 'app_drawer_item.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const <Widget>[
          AppDrawerHeader(),
          AppDrawerItem(title: 'Your trips'),
          AppDrawerItem(
            title: 'Help',
          ),
          AppDrawerItem(
            title: 'Wallet',
          ),
          AppDrawerItem(
            title: 'Settings',
            route: accountSettingPageRoute,
          ),
          Spacer(),
          Divider(color: Colors.grey),
          LegalMenueOption()
        ],
      ),
    );
  }
}
