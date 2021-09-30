import 'package:flutter/material.dart';

class DrawerAppBar extends StatelessWidget {
  const DrawerAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.dehaze),
          color: Colors.black,
          iconSize: 35,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
    );
  }
}
