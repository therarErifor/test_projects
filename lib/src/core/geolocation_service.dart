import 'package:geolocator/geolocator.dart';

class GeolocationService {

  Future<Position?> getCurrentPositionAsync() async {
    var hasPermission = await _requestPermissionsAndEnableServiceAsync();
    if (!hasPermission) {
      await requestPermissionsAsync();
    }
    var position = await Geolocator.getLastKnownPosition();
    position ??= await Geolocator.getCurrentPosition();

    return position;
  }

  Future<bool> hasPermissionsAsync() async {
    var permissionStatus = await Geolocator.checkPermission();
    return permissionStatus == LocationPermission.whileInUse ||
        permissionStatus == LocationPermission.always;
  }

  Future<bool> requestPermissionsAsync() async {
    var permissionStatus = await Geolocator.requestPermission();
    return permissionStatus == LocationPermission.whileInUse ||
        permissionStatus == LocationPermission.always;
  }

  Future<bool> _requestPermissionsAndEnableServiceAsync() async {
    try {
      var permissionStatus = await Geolocator.checkPermission();
      if (permissionStatus == LocationPermission.denied ||
          permissionStatus == LocationPermission.deniedForever) {
        return false;
      }

      var isServiceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!isServiceEnabled) {
        return false;
      }

      if (permissionStatus == LocationPermission.whileInUse ||
          permissionStatus == LocationPermission.always) {
        return true;
      }

      permissionStatus = await Geolocator.requestPermission();
      return
        permissionStatus == LocationPermission.whileInUse ||
            permissionStatus == LocationPermission.always;
    } catch (error) {
      return false;
    }
  }
}
