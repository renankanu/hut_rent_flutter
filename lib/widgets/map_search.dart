import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui' as ui;

class MapSearch extends StatefulWidget {
  @override
  _MapSearchState createState() => _MapSearchState();
}

class _MapSearchState extends State<MapSearch> {
  GoogleMapController controller;
  BitmapDescriptor _markerIcon;

  @override
  Widget build(BuildContext context) {
    _createMarkerImageFromAsset(context);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: LatLng(38.721730, -9.137778), zoom: 12),
        onMapCreated: _onMapCreated,
        markers: _createMarker(),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controllerParam) {
    setState(() {
      controller = controllerParam;
    });
  }

  Set<Marker> _createMarker() {
    return <Marker>[
      Marker(
          markerId: MarkerId("house"),
          position: LatLng(38.724627, -9.137949),
          icon: _markerIcon,
          infoWindow: InfoWindow(title: 'Alooooooo')),
      Marker(
          markerId: MarkerId("house1"),
          position: LatLng(38.724317, -9.140031),
          icon: _markerIcon,
          consumeTapEvents: true),
      Marker(
          markerId: MarkerId("house2"),
          position: LatLng(38.723404, -9.135128),
          icon: _markerIcon,
          consumeTapEvents: true),
      Marker(
        markerId: MarkerId("house3"),
        position: LatLng(38.719805, -9.135182),
        icon: _markerIcon,
        consumeTapEvents: true,
      ),
    ].toSet();
  }

  Future<void> _createMarkerImageFromAsset(BuildContext context) async {
    if (_markerIcon == null) {
      final ImageConfiguration imageConfiguration =
          createLocalImageConfiguration(context);
      BitmapDescriptor.fromAssetImage(imageConfiguration, 'images/marker.png')
          .then(_updateBitmap);
    }
  }

  void _updateBitmap(BitmapDescriptor bitmap) {
    setState(() {
      _markerIcon = bitmap;
    });
  }
}
