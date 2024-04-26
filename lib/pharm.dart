
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Pharmacy extends StatefulWidget {
  const Pharmacy({Key? key}) : super(key: key);

  @override
  State<Pharmacy> createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
  Location _locationController = Location();

  static const LatLng _pGooglePlex = LatLng(26.1475381, 78.1882775);
  static const LatLng _surbhi = LatLng(26.1475381, 78.1882775);
  static const LatLng _pharm1 = LatLng(26.152359020636855, 78.18771235670623);
  static const LatLng _pharm2 = LatLng(26.161302401718288, 78.15977062610773);
  LatLng? _currentP;

  @override
  void initState() {
    super.initState();
    getLocationUpdates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _pGooglePlex,
          zoom: 14,
        ),
        markers: {
          Marker(
            markerId: MarkerId("CurrentLocation"),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
            position: _surbhi,
          ),
          Marker(
            markerId: MarkerId("SourceLocation1"),
            icon: BitmapDescriptor.defaultMarker,
            position: _pharm1,
          ),
          Marker(
            markerId: MarkerId("SourceLocation2"),
            icon: BitmapDescriptor.defaultMarker,
            position: _pharm2,
          ),
        },
      ),
    );
  }

  Future<void> getLocationUpdates() async {
    bool _enable = await _locationController.serviceEnabled();
    if (!_enable) {
      _enable = await _locationController.requestService();
      if (!_enable) {
        return;
      }
    }

    PermissionStatus _permission = await _locationController.hasPermission();
    if (_permission == PermissionStatus.denied) {
      _permission = await _locationController.requestPermission();
      if (_permission != PermissionStatus.granted) {
        return;
      }
    }

    _locationController.onLocationChanged.listen((LocationData currentLocation) {
      if (currentLocation.latitude != null &&
          currentLocation.longitude != null) {
        setState(() {
          _currentP = LatLng(currentLocation.latitude!, currentLocation.longitude!);
          print(_currentP);
        });
        print(_currentP);
      }
    });
  }
}
