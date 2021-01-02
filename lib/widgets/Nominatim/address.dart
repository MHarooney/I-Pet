import 'dart:convert';

import 'latLng.dart';

class Address {
  Address(
      {this.coordinates,
      this.osmType,
      this.country = "",
      this.countryIsoCode = "",
      this.road = "",
      this.housenumber = "",
      this.city = "",
      this.postalCode = "",
      this.suburb = "",
      this.state = ""});

  /// Finds a address using [query] and returns it as typeof[Address]
  ///
  /// [list] is the list we are searching though
  static Address findAddress(String query, List<Address> list) {
    for (Address a in list) {
      if (query == "${a.road} ${a.housenumber}, ${a.city}, ${a.country}")
        return a;
    }

    return null;
  }

  /// Finds a address using [query] and returns it as typeof[Address]
  ///
  /// [list] is the list we are searching though
  static Address findAddressPoB(String query, List<Address> list) {
    for (Address a in list) {
      String s = "${a.city}, ${a.state} ${a.country}";
      if (query == s) return a;
    }

    return null;
  }

  /// Takes [list] and converts it to a list of string addresses as [List<String>]
  static List<String> toListString(List<Address> list) {
    List<String> l = [];
    for (Address a in list) {
      if (a.road.isNotEmpty || a.housenumber.isNotEmpty) {
        l.add("${a.road} ${a.housenumber}, ${a.city}, ${a.country}");
      } else {
        l.add("${a.city}, ${a.state} ${a.country}");
      }
    }

    return l;
  }

  /// Public vars
  final LatLng coordinates;

  final String osmType;

  final String country;
  final String countryIsoCode;

  final String road;
  final String housenumber;

  final String city;
  final String postalCode;
  final String suburb;
  final String state;

  /// Public vars ^^^

  static Address fromJson(String jsonStr) {
    Map<String, dynamic> m = json.decode(jsonStr);
    Address s = new Address(
        coordinates: LatLng.fromJson(m['coordinates']),
        osmType: m['osmType'],
        country: m['country'],
        countryIsoCode: m['countryIsoCode'],
        road: m['road'],
        housenumber: m['housenumber'],
        city: m['city'],
        postalCode: m['postalCode'],
        suburb: m['suburb'],
        state: m['state']);
    return s;
  }

  String toJson() {
    Map<String, dynamic> map = {
      "coordinates": (coordinates != null
          ? this.coordinates.toJson()
          : "{\"longitude\": 0.0, \"latitiude\": 0.0 }"),
      "osmType": this.osmType,
      "country": this.country,
      "countryIsoCode": this.countryIsoCode,
      "road": this.road,
      "housenumber": this.housenumber,
      "city": this.city,
      "postalCode": this.postalCode,
      "suburb": this.suburb,
      "state": this.state
    };

    return json.encode(map);
  }
}
