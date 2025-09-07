import 'package:geolocator/geolocator.dart';
import 'package:weater/src/core/errors.dart';

class GeolocationService {
  Future<Position?> getCurrentPositionAsync() async {
    await _requestPermissionsAndEnableServiceAsync();

    var position = await Geolocator.getLastKnownPosition();
    position ??= await Geolocator.getCurrentPosition();

    return position;
  }

  Future<bool> hasPermissionsAsync() async {
    var permissionStatus = await Geolocator.checkPermission();
    return permissionStatus == LocationPermission.whileInUse ||
        permissionStatus == LocationPermission.always;
  }

  Future<bool> openAppSettings() async {
    return await Geolocator.openAppSettings();
  }

  Future<bool> openLocationSettings() async {
    return await Geolocator.openLocationSettings();
  }

  Future<bool> _requestPermissionsAndEnableServiceAsync() async {
    try {
      var permissionStatus = await Geolocator.checkPermission();
      if (permissionStatus == LocationPermission.denied ||
          permissionStatus == LocationPermission.deniedForever) {
        throw LocationDenied();
      }

      var isServiceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!isServiceEnabled) {
        throw NoGeolocation();
      }

      if (permissionStatus == LocationPermission.whileInUse ||
          permissionStatus == LocationPermission.always) {
        return true;
      }

      permissionStatus = await Geolocator.requestPermission();
      return permissionStatus == LocationPermission.whileInUse ||
          permissionStatus == LocationPermission.always;
    } on LocationDenied {
      rethrow;
    } on NoGeolocation {
      rethrow;
    } catch (error) {
      return false;
    }
  }
}
