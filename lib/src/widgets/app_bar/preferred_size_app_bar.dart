import 'package:flutter/material.dart';

class PreferredSizeAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final Widget? child;

  const PreferredSizeAppBar({Key? key, this.child})
      : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return child!;
  }
}
