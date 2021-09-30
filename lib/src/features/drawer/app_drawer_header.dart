import 'package:flutter/material.dart';
import 'package:uber_clone/config/style/text_style.dart';
import 'package:uber_clone/src/features/drawer/message_option.dart';
import 'package:uber_clone/src/widgets/image/app_circle_avater.dart';

import 'do_more_option.dart';

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.3,
      child: DrawerHeader(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: const <Widget>[
                AppCircleAvatar(),
                SizedBox(width: 15),
                Text(
                  'Shohidul Islam',
                  style: k17TextStyle,
                ),
              ],
            ),
            const MessageOption(),
            const DoMoreOption(),
          ],
        ),
      ),
    );
  }
}
