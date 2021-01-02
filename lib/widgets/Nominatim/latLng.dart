import 'dart:convert';

class LatLng {
  final double latitiude;
  final double longitude;

  LatLng(this.latitiude, this.longitude);

  String toJson() {
    return json.encode(
      {"latitiude": this.latitiude, "longitude": this.longitude},
    );
  }

  static LatLng fromJson(String jsonStr) {
    return LatLng(
      json.decode(jsonStr)['latitiude'],
      json.decode(jsonStr)['longitude'],
    );
  }
}
