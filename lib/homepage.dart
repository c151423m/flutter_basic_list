import 'package:flutter/material.dart';
import 'package:flutter_basic_list/image_banner.dart';
import 'package:flutter_basic_list/text_section.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hi'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/tokyo_tower.jpeg"),
          TextSection("Summary",
              "Loren Ipsum Loren IpsuemLoren Ipsum Loren IpsuemLoren Ipsum Loren IpsuemLoren Ipsum Loren Ipsuem"),
          TextSection("Summary",
              "Loren Ipsum Loren IpsuemLoren Ipsum Loren IpsuemLoren Ipsum Loren IpsuemLoren Ipsum Loren Ipsuem"),
          TextSection("Summary",
              "Loren Ipsum Loren IpsuemLoren Ipsum Loren IpsuemLoren Ipsum Loren IpsuemLoren Ipsum Loren IpsuemLoren Ipsum Loren IpsuemLoren Ipsum Loren Ipsuem"),
        ],
      ),
    );
  }
}
