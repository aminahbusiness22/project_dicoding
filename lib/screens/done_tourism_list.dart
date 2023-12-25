import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/tourism_model.dart';
import '../provider/done_tourism_provider.dart';

class DoneTourismPlaceList extends StatelessWidget {
  const DoneTourismPlaceList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TourismModel> doneTourismPlaceList =
        Provider.of<DoneTourismProvider>(
          context,
          listen: false,
        ).doneTourismPlaceList;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Telah Dikunjungi"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          final TourismModel place = doneTourismPlaceList[index];
          return Card(
            color: Colors.white60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset(place.imageAssets),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          place.name,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(place.location)
                      ],
                    ),
                  ),
                ),
                const Icon(Icons.download_done_sharp, color: Colors.green)
              ],
            ),
          );
        },
        itemCount: doneTourismPlaceList.length,
      ),
    );
  }
}
