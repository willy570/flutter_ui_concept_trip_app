import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_concept_trip_app/widgets/make_page.dart';

class Home extends StatefulWidget {
  const Home({super.key, required String title});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late PageController _controller;

  void _onScroll() {}
  @override
  void initState() {
    _controller = PageController(initialPage: 0)..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          buildPage(
              page: 1,
              image: 'assets/images/Baie_de_Cocody_.jpg',
              title: 'Baie de Cocody',
              description:
                  'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.'),
          buildPage(
              page: 2,
              image: 'assets/images/Pyramide.jpg',
              title: 'Plateau Pyramide',
              description:
                  'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.'),
          buildPage(
              page: 3,
              image:
                  'assets/images/yamoussoukro-côte-d-ivoire-er-février-basilique-célèbre-de-point-repère-notre-madame-paix-cathédrale-chrétienne-africaine-104181891.jpg',
              title: 'Basilique notre Dame',
              description:
                  "Sedona is regularly described as one of America's most beautiful places. Nowhere else will you find a landscape as dramatically colorful."),
          buildPage(
              page: 4,
              image: 'assets/images/Banco-1.jpg',
              title: 'Parc national du Banco',
              description:
                  "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak."),
        ],
      ),
    );
  }
}
