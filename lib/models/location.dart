import 'package:flutter_basic_list/models/location_fact.dart';

import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, "Tokyo Tower", "assets/images/tokyo_tower.jpeg", [
        LocationFact('Summary',
            "While the newest Tokyo Sky tree has easily surpassed its height, Tokyo Tower remains to be the iconic landmark of Tokyo with its distinctive red colour"),
        LocationFact('Literally Who cares info',
            'The author of this info used to live literally a minute away from Tokyo Tower.'),
      ]),
      Location(2, "Yari-ga-take", "assets/images/yarigatake.jpeg", [
        LocationFact('Summary',
            "The first 'proper mountain ' climbed. It is 3180m tall , which is still not the tallest, but yet tall enough to feel the thinning air."),
        LocationFact('Fun Fact',
            'Yari means "Spear" in English as it was named from the pointy summit. The northern alps also has "Tsurugi" which means "Sword".'),
      ]),
      Location(3, "Hokkaido", "assets/images/hokkaido.jpeg", [
        LocationFact('Summary',
            "The biggest  and northernmost prefecture in Japan. It is famous for the snowy winter and amazing seafoods."),
        LocationFact('Fun Fact',
            'Hokkaido was previously known as Ezo and was ruled by indigenous tribe known as "Ainu". While they still exist, the culture and language is quickly fading away.'),
      ]),
    ];
  }

  static Location? fetchByID(int locationID) {
    // fetchy all location , iterate and when we finde the location with the id i want,  return it immediately
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
