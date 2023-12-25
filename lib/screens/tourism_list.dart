// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/tourism_model.dart';
import '../provider/done_tourism_provider.dart';
import 'detail_screen.dart';
import 'list_item.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  List<TourismModel> doneTourismModelList = [];
  final List<TourismModel> TourismModelList = [
    TourismModel(
      name: "Surabaya Submarine Monument",
      location: "Jl.Pemuda",
      imageAssets: "assets/images/submarine.jpg",
      description:
      "Museum inside a decommissioned Rusian war submarine with tours & an ajcacent park with cafes.Clean and well mainteainedCar park cost 10k, entrace fee 15k/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the Indonesian Navy at the building beside beside the submarine.",
      day: "01:00-02:00",
      callender: "Senin-Selasa",
      price: "10.000",
    ),
    TourismModel(
      name: "Kelenteng Sanggar Agung",
      location: "Kenjeran",
      imageAssets: "assets/images/kelenteng.jpg",
      description:
      "Sanggar Agung Temple or Hong San Tang Temple is a temple in the city of Surabaya. The address is at Jalan Sukolilo Number 100, Pantai Ria Kenjeran, Surabaya. This temple, apart from being a place of worship for adherents of the Tridharma, is also a tourist destination for tourists.",
      day: "03:00-04:00",
      callender: "Selase-Rabu",
      price: "20.000",
    ),
    TourismModel(
      name: "House of Sampoerna",
      location: "Krembangan Utara",
      imageAssets: "assets/images/sampoerna.jpg",
      description:
      "House of Sampoerna is a tobacco museum and Sampoernas headquarters located in Surabaya. The architectural style of the main building which is influenced by the Dutch colonial style was built in 1862 and is now a historical site.",
      day: "04:00-05:00",
      callender: "Kamis-Jum'at",
      price: "40.000",
    ),
    TourismModel(
      name: "Tugu Pahlawan",
      location: "alun-alun contong",
      imageAssets: "assets/images/tugupahlawan.jpg",
      description:
      "The Tugu Pahlawan Monument is a tribute to the fighters in Surabaya who died defending Indonesian independence, especially in Surabaya.",
      day: "04:00-05:00",
      callender: "Kamis-Jum'at",
      price: "40.000",
    ),
    TourismModel(
      name: "Patung Suro Boyo",
      location: "Wonokromo",
      imageAssets: "assets/images/patung.jpg",
      description:
      "The statue of Sura and Baya is a statue which is a symbol of the city of Surabaya. This statue is in front of the Surabaya Zoo. This statue consists of two animals, namely a crocodile and a shark, which inspired the name of the city of Surabaya, Ikan Sura and Baya.",
      day: "04:00-05:00",
      callender: "Kamis-Jum'at",
      price: "40.000",
    ),
    TourismModel(
      name: "Tugu Pahlawan",
      location: "alun-alun contong",
      imageAssets: "assets/images/tugupahlawan.jpg",
      description:
      "The Tugu Pahlawan Monument is a tribute to the fighters in Surabaya who died defending Indonesian independence, especially in Surabaya.",
      day: "04:00-05:00",
      callender: "Kamis-Jum'at",
      price: "40.000",
    ),
    TourismModel(
      name: "Patung Suro Boyo",
      location: "Wonokromo",
      imageAssets: "assets/images/patung.jpg",
      description:
      "The statue of Sura and Baya is a statue which is a symbol of the city of Surabaya. This statue is in front of the Surabaya Zoo. This statue consists of two animals, namely a crocodile and a shark, which inspired the name of the city of Surabaya, Ikan Sura and Baya.",
      day: "04:00-05:00",
      callender: "Kamis-Jum'at",
      price: "40.000",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        final TourismModel place = TourismModelList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return DetailScreen(place: place);
              },
            ));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget) {
              return ListItem(
                place: place,
                isDone: doneTourismModelList.contains(place),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if (value != null) {
                      value
                          ? doneTourismModelList.add(place)
                          : doneTourismModelList.remove(place);
                      data.complete(place, value);
                    }
                  });
                },
              );
            },
          ),
        );
      },
      itemCount: TourismModelList.length,
    );
  }
}
