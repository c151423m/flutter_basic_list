import 'package:flutter_basic_list/models/location_fact.dart';

import 'location_fact.dart';

class Location {
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location("Tokyo Tower", "assets/images/tokyo_tower.jpeg", [
        LocationFact('Summary',
            "While the newest Tokyo Sky tree has easily surpassed its height, Tokyo Tower remains to be the iconic landmark of Tokyo with its distinctive red colour"),
        LocationFact('Literally Who cares info',
            'The author of this info used to live literally a minute away from Tokyo Tower.'),
      ]),
    ];
  }
}
