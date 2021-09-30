import 'package:flutter/material.dart';
import 'package:uber_clone/src/widgets/app_bar/preferred_size_app_bar.dart';

import '../drawer/app_drawer.dart';
import 'widgets/app_bar.dart';
import 'widgets/choose_saved_place.dart';
import 'widgets/google_map_around_you.dart';
import 'widgets/ride_with_ubar.dart';
import 'widgets/rider_options.dart';
import 'widgets/where_to.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSizeAppBar(
        child: DrawerAppBar(),
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: const <Widget>[
              SizedBox(
                height: 10,
              ),
              RideWithUber(),
              SizedBox(height: 10),
              RiderOptions(),
              WhereToWidget(),
              ChooseSavedPlace(),
              GoogleMapAroundYou(),
            ],
          ),
        ),
      ),
    );
  }
}
