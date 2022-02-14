import 'package:flutter/material.dart';
import 'package:flutter_basic_list/screen/location_detail/location_detail.dart';
import 'package:flutter_basic_list/screen/locations/locations.dart';
import 'package:flutter_basic_list/style.dart';

const LocationsRoute = '/';
const LocationDetailsRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: _routes(),
        debugShowCheckedModeBanner: false,
        theme: _theme());
  }

  RouteFactory _routes() {
    return (settings) {
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailsRoute:
          final Map<String, dynamic> arguments =
              settings.arguments as Map<String, dynamic>;
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      // ignore: prefer_const_constructors
      appBarTheme: AppBarTheme(
        textTheme: const TextTheme(headline6: AppBarTextStyle),
      ),
      textTheme: const TextTheme(
        headline6: TitleTextStyle,
        bodyText1: Body1TextStyle,
      ),
    );
  }
}
