// ignore_for_file: equal_elements_in_set, duplicate_ignore

import 'dart:typed_data';
import 'package:label_marker/label_marker.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:unknownpro/tourists.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(6.5781373, 0.4502368);
  static const LatLng destination = LatLng(5.921881, 0.993608);

  static const LatLng sourceLocation1 = LatLng(5.827575, 0.969167);
  static const LatLng destination1 = LatLng(5.984467, 0.940331);

  static const LatLng sourceLocation10 = LatLng(5.776450, 0.822564);
  static const LatLng destination10 = LatLng(5.897803, 0.976103);

  static const LatLng sourceLocation2 = LatLng(5.777156, 0.677125);
  static const LatLng destination2 = LatLng(5.976667, 0.744167);

  static const LatLng sourceLocation3 = LatLng(5.898161, 0.994239);
  static const LatLng destination3 = LatLng(5.939225, 0.996114);

  static const LatLng sourceLocation4 = LatLng(5.772414, 0.755594);
  static const LatLng destination4 = LatLng(5.898247, 0.989911);

  static const LatLng sourceLocation5 = LatLng(5.926050, 0.994467);
  static const LatLng destination5 = LatLng(5.897369, 0.994986);

  static const LatLng sourceLocation6 = LatLng(5.802806, 0.729586);
  static const LatLng destination6 = LatLng(5.845183, 0.981536);

  static const LatLng sourceLocation7 = LatLng(5.886503, 0.979331);
  static const LatLng destination7 = LatLng(5.995156, 0.585397);

  static const LatLng sourceLocation8 = LatLng(6.008581, 0.550742);
  static const LatLng destination8 = LatLng(5.968292, 0.535197);

  static const LatLng sourceLocation9 = LatLng(5.988483, 0.597153);
  static const LatLng destination9 = LatLng(5.991375, 0.594003);

  static const LatLng sourceLocation11 = LatLng(5.999628, 0.596081);
  static const LatLng destination11 = LatLng(5.994153, 0.591769);

  static const LatLng sourceLocation12 = LatLng(5.999400, 0.596622);
  static const LatLng destination12 = LatLng(5.989539, 0.596789);

  static const LatLng sourceLocation13 = LatLng(5.793758, 0.894239);
  static const LatLng destination13 = LatLng(5.922844, 0.992639);

  static const LatLng sourceLocation14 = LatLng(6.002639, 0.863122);
  static const LatLng destination14 = LatLng(5.997511, 0.856533);

  static const LatLng sourceLocation15 = LatLng(5.997739, 0.859550);
  static const LatLng destination15 = LatLng(5.774050, 0.694839);

  static const LatLng sourceLocation16 = LatLng(5.780797, 0.672317);
  static const LatLng destination16 = LatLng(5.880475, 0.688572);

  static const LatLng sourceLocation17 = LatLng(5.921064, 0.879928);
  static const LatLng destination17 = LatLng(5.979433, 0.915636);

  static const LatLng sourceLocation18 = LatLng(5.987317, 0.906653);
  static const LatLng destination18 = LatLng(5.876511, 0.936642);

  List<LatLng> polylineCoordinates = [];

  get polylines => null;

  get floatingActionButton => null;
  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyARiTi6OMglnERWdU0B4jLPEiC4WfXepvs", // Your Google Map Key
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
    );
    if (result.points.isNotEmpty) {
      result.points.forEach(
        (PointLatLng point) => polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }
  }

  @override
  void initState() {
    // getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Unknown",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.deepPurple),
        ),
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
            onPressed: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (_) => const Tourist()));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.deepPurple,
            )),
      ),
      body: Stack(children: [
        GoogleMap(
          initialCameraPosition: const CameraPosition(
            target: sourceLocation,
            zoom: 13.5,
          ),
          // ignore: duplicate_ignore
          markers: {
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation1,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination1,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation2,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination2,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation3,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination3,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation4,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination4,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation5,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination5,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation7,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination7,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation8,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination8,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation9,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination9,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation10,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination10,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation11,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination11,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation12,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination12,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation13,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination13,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation14,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination14,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation15,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination15,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation16,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination16,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation17,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination17,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation18,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination18,
            ),
            const Marker(
              markerId: MarkerId("source"),
              position: sourceLocation6,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: destination6,
            ),
          },
          onMapCreated: (mapController) {
            _controller.complete(mapController);
          },
        ),
        Positioned(
          top: 10,
          right: 15,
          left: 15,
          child: Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                IconButton(
                  splashColor: Colors.grey,
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
                const Expanded(
                  child: TextField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        hintText: "Search..."),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Text('A'),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const Tourist()));
        },
        label: const Text('Tourists Site'),
        icon: const Icon(Icons.tour),
        backgroundColor: Colors.red,
      ),
    );
  }
}
//  polylines: {
//           Polyline(
//             polylineId: const PolylineId("route"),
//             points: polylineCoordinates,
//             color: const Color(0xFF7B61FF),
//             width: 6,
//                 ),
//           }