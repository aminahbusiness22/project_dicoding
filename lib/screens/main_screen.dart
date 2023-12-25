// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:minahprojectdicoding/screens/tourism_list.dart';
import 'done_tourism_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    // final List<TourismPlace> doneTourismPlaceList = [];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Aplikasi List Wisata"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.done_outline),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const DoneTourismPlaceList();
                }));
              },
            ),
          ],
        ),
        body:  TourismList()

    );
  }
}

