import 'dart:typed_data';
import 'package:label_marker/label_marker.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(6.703967, -1.616153);
  static const LatLng destination = LatLng(6.69974, -1.62513);

  static const LatLng sourceStart = LatLng(6.703967, -1.616153);
  static const LatLng end = LatLng(6.7023992, -1.6216275);

  // static const LatLng source = LatLng(6.703967, -1.616153);
  // static const LatLng endd = LatLng(6.691469, -1.624654);

  static const LatLng Start = LatLng(6.703967, -1.616153);
  static const LatLng eend = LatLng(6.7023992, -1.6216275);

  static const LatLng sourceSt = LatLng(6.703967, -1.616153);
  static const LatLng ennd = LatLng(6.6809, -1.62500);

  static const LatLng begin = LatLng(6.703967, -1.616153);
  static const LatLng done = LatLng(6.752021, -1.710095);

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
    getPolyPoints();
    super.initState();
  }

// // list of locations to display polylines
//   List<LatLng> latLen = [
//     LatLng(6.703967, -1.616153), //manhyia
//     LatLng(6.69974, -1.62513), //zoo
//     LatLng(6.7023992, -1.6216275), //sword
//     LatLng(6.691469, -1.624654), //armed forces museum
//     LatLng(6.6809, -1.62500), // rattray park
//     LatLng(6.752021, -1.710095), //owabi
//   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unknown"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Stack(children: [
        GoogleMap(
          initialCameraPosition: const CameraPosition(
            target: sourceLocation,
            zoom: 13.5,
          ),
          markers: {
            const Marker(
              markerId: MarkerId("source"),
              position: LatLng(6.703967, -1.616153),
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: LatLng(6.69974, -1.62513),
            ),
            // ignore: equal_elements_in_set
            const Marker(
              markerId: MarkerId("source"),
              position: LatLng(6.703967, -1.616153),
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: LatLng(6.691469, -1.624654),
            ),
            // ignore: equal_elements_in_set
            const Marker(
              markerId: MarkerId("source"),
              position: Start,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: eend,
            ),
            // ignore: equal_elements_in_set
            const Marker(
              markerId: MarkerId("source"),
              position: sourceSt,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: ennd,
            ),
            // ignore: equal_elements_in_set
            const Marker(
              markerId: MarkerId("source"),
              position: begin,
            ),
            const Marker(
              markerId: MarkerId("destination"),
              position: done,
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
        onPressed: () {},
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