import 'package:flutter/material.dart';

import '../models/tourism_model.dart';

class DoneTourismProvider extends ChangeNotifier {
  final List<TourismModel> _doneTourismPlaceList = [];
  List<TourismModel> get doneTourismPlaceList => _doneTourismPlaceList;

  void complete(TourismModel place, bool isDone) {
    isDone
        ? _doneTourismPlaceList.add(place)
        : _doneTourismPlaceList.remove(place);
    notifyListeners();
  }
}
