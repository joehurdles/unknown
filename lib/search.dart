import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:collection';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Search> {
// created controller to display Google Maps
  Completer<GoogleMapController> _controller = Completer();
//on below line we have set the camera position
  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(6.700071, -1.630783),
    zoom: 14,
  );

  final Set<Marker> _markers = {};
  final Set<Polyline> _polyline = {};

// list of locations to display polylines
  List<LatLng> latLen = [
    LatLng(6.703967, -1.616153), //manhyia
    LatLng(6.69974, -1.62513), //zoo
    LatLng(6.7023992, -1.6216275), //sword
    LatLng(6.691469, -1.624654), //armed forces museum
    LatLng(6.69746, -1.62985), // rattray park
    LatLng(6.752021, -1.710095), //owabi
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // declared for loop for various locations
    for (int i = 0; i < latLen.length; i++) {
      _markers.add(
          // added markers
          Marker(
        markerId: MarkerId(i.toString()),
        position: latLen[i],
        infoWindow: InfoWindow(
          title: 'HOTEL',
          snippet: '5 Star Hotel',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
      setState(() {});
      _polyline.add(Polyline(
        polylineId: PolylineId('1'),
        points: latLen,
        color: Colors.green,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0F9D58),
        // title of app
        title: Text("GFG"),
      ),
      body: Container(
        child: SafeArea(
          child: GoogleMap(
            //given camera position
            initialCameraPosition: _kGoogle,
            // on below line we have given map type
            mapType: MapType.normal,
            // specified set of markers below
            markers: _markers,
            // on below line we have enabled location
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            // on below line we have enabled compass location
            compassEnabled: true,
            // on below line we have added polylines
            polylines: _polyline,
            // displayed google map
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
      ),
    );
  }
}
