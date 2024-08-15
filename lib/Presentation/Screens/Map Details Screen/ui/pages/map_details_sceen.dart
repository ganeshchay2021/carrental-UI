import 'package:carrental/Presentation/Screens/Map%20Details%20Screen/ui/pages/car_details_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapDetailsScreen extends StatelessWidget {
  const MapDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter:
                  LatLng(27.700001, 85.333336), // Center the map over Kathmandu
              initialZoom: 13,
            ),
            children: [
              TileLayer(
                // Display map tiles from any source
                urlTemplate:
                    'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
                userAgentPackageName: 'com.example.app',
                maxNativeZoom: 19,
              ),
            ],
          ),
          const Positioned(
              bottom: 0, left: 0, right: 0, child: CarDetailsCard())
        ],
      ),
    );
  }
}
