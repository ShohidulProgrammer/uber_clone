import 'package:flutter/material.dart';
import 'package:uber_clone/config/router/navigation.dart';
import 'package:uber_clone/config/style/text_style.dart';

class AppDrawerItem extends StatelessWidget {
  final String title;
  final String? route;

  const AppDrawerItem({Key? key, required this.title, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: kThin17TextStyle,
      ),
      onTap: () => pushNameRoute(route ?? title),
    );
  }
}
