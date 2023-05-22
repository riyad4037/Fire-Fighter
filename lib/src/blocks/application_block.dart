import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

import '../service/geolocator_service.dart';

final currentLocationProveder = ChangeNotifierProvider<Applicationbloc>(
  (ref) {
    return Applicationbloc();
  },
);

class Applicationbloc with ChangeNotifier {
  final geolocatorService = GeolocatorService();

  Position? currentLocation;

  Applicationbloc() {
    setCurrentLocation();
  }

  setCurrentLocation() async {
    currentLocation = await geolocatorService.getCurrentLocation();
    notifyListeners();
  }
}
