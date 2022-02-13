import 'package:flutter/material.dart';
import 'package:flutter_basic_list/image_banner.dart';
import 'package:flutter_basic_list/models/location.dart';
import 'package:flutter_basic_list/text_section.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    final location = locations.first;

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath),
        ]..addAll(
            textSections(location),
          ),
      ),
    );
  }

// Map is basically iteration of list
// This textSections will take the Location class , especially the facts section
// Then in the facts.map, we will call an anonymous function for TextSection Widget ( which has title and text )
// and then put the fact title and fact text instead
  List<Widget> textSections(Location location) {
    return location.facts
        .map(
          (fact) => TextSection(fact.title, fact.text),
        )
        .toList();
  }
}
