abstract class ErrorMessage implements Exception {
  final String message;

  ErrorMessage({required this.message});
}

class NoConnection extends ErrorMessage {
  NoConnection() : super(message: "Нет подключения к интернету");
}

class NoCity extends ErrorMessage {
  NoCity() : super(message: "Нет такого города");
}

class NoGeolocation extends ErrorMessage {
  NoGeolocation() : super(message: "Геолокация отключена");
}

class LocationDenied extends ErrorMessage {
  LocationDenied() : super(message: "Нет разрешения на геолокацию");
}