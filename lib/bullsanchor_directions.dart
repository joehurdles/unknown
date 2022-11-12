import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_widget/google_maps_widget.dart';

class Directions23 extends StatelessWidget {
  // can create a controller, and call methods to update source loc,
  // destination loc, interact with the google maps controller to
  // show/hide markers programmatically etc.
  final mapsWidgetController = GlobalKey<GoogleMapsWidgetState>();

  Directions23({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: GoogleMapsWidget(
                  apiKey: "AIzaSyARiTi6OMglnERWdU0B4jLPEiC4WfXepvs",
                  key: mapsWidgetController,
                  sourceLatLng: const LatLng(5.903125, 0.986847),
                  destinationLatLng: const LatLng(5.789522, 0.908814),

                  ///////////////////////////////////////////////////////
                  //////////////    OPTIONAL PARAMETERS    //////////////
                  ///////////////////////////////////////////////////////

                  routeWidth: 2,
                  sourceMarkerIconInfo: MarkerIconInfo(
                    infoWindowTitle: "This is source name",
                    onTapInfoWindow: (_) {
                      print("Tapped on source info window");
                    },
                    assetPath: "assets/images/human-marker-icon.png",
                  ),
                  destinationMarkerIconInfo: const MarkerIconInfo(
                    assetPath: "assets/images/house-marker-icon.png",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
