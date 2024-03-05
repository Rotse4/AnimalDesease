
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  
  Location _locationController = new Location();
  
  static const LatLng _pGooglePlex = LatLng(0.1264226, 37.7209075);
  static const LatLng _pApplePark = LatLng(1.1264226, 37.7209075);
  LatLng? _currentP =null;
  LatLng? get currentP => _currentP;

  @override
  void initState() {
    super.initState();
    getLocationUpdates();
  }

  @override
  Widget build(BuildContext context) {
    print("heght" "${MediaQuery.of(context).size.height*0.5}");
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.5,
            // width: 4,
            child: GoogleMap(initialCameraPosition: CameraPosition(target: _pGooglePlex,zoom: 14),
            markers:{
              Marker(markerId: MarkerId("_currentLocation"), icon: BitmapDescriptor.defaultMarker,
              position: _currentP??_pGooglePlex),
               Marker(markerId: MarkerId("_destinationLocation"), icon: BitmapDescriptor.defaultMarker,
              position: _pApplePark)
            } ,
            ),
          ),

        ],
      ),
    );
  }
  Future<void> getLocationUpdates() async {
    // allowed to get users location
    bool _serviceEnabled;

    //if we are grantent permission by user
    PermissionStatus _permissionGranted;

    _serviceEnabled = await _locationController.serviceEnabled();
    if(_serviceEnabled){
      _serviceEnabled = await _locationController.requestService();
    }else{
      return;
    }
    _permissionGranted = await _locationController.hasPermission();
    if(_permissionGranted== PermissionStatus.denied){
      _permissionGranted = await _locationController.requestPermission();
      if(_permissionGranted!= PermissionStatus.granted){
        return;
      }
    }
    _locationController.onLocationChanged.listen((LocationData currentLocation) {
      if (currentLocation.latitude != null &&
       currentLocation.longitude != null){
        setState(() {
          _currentP = LatLng(currentLocation.latitude!, currentLocation.longitude!, );
          print(_currentP);
        });
      }
     });
  }
}