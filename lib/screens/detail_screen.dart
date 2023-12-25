import 'package:flutter/material.dart';

import '../models/tourism_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.place});
  final TourismModel place;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(place.name),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop(); // Navigate back to the previous screen
            },
          ),
        ),
        body: SafeArea(
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(place.imageAssets),
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    place.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Lobster',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            const Icon(Icons.calendar_today),
                            Text(place.callender)
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            const Icon(Icons.access_time_sharp),
                            Text(place.callender)
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            const Icon(Icons.attach_money),
                            Text(place.price)
                          ],
                        )
                      ]),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    place.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          // child: Image.network(
                          // "https://scontent.fcgk4-4.fna.fbcdn.net/v/t39.30808-6/327176494_930394444996969_1154742067424496813_n.png?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFOmyKnJe0iXx2Ws9ZryuJeIgn7ePmUhIUiCft4-ZSEhRZj6giY_dMwwvUIlH6x7rqO4DnAe-ukWIE9G0Wl-5o0&_nc_ohc=0CDnF_UF-iwAX-68bZa&_nc_ht=scontent.fcgk4-4.fna&oh=00_AfC7z7nHwapY_PWqHAtG1TiSRoSbvAK9fD7HzyuWGC4ztQ&oe=64119E37"),
                          child: Image.asset("assets/images/submarine.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/monkasel1.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/kelenteng.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/sampoerna.jpg"),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
