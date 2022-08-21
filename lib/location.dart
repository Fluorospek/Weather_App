import 'package:geolocator/geolocator.dart';

class Location {
  double? longitude;
  double? lattitude;

  Future<void> getLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      lattitude = position.latitude;
    } catch (err) {
      print(err);
    }
  }
}
