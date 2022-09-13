import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:ybm_business/tabbar_class/screens/search_places_screen.dart';

class SimpleMapScreen extends StatefulWidget {
  const SimpleMapScreen({Key? key}) : super(key: key);

  @override
  _SimpleMapScreenState createState() => _SimpleMapScreenState();
}

class _SimpleMapScreenState extends State<SimpleMapScreen> {
//the below code is for search places
 // static const CameraPosition initialCameraPosition = CameraPosition(target: LatLng(37.42796, -122.08574), zoom: 14.0);
  Set<Marker> markersList = {};
  // late GoogleMapController googleMapController;
  final Mode _mode = Mode.overlay;



  //the first threee is used for  current location
  late GoogleMapController googleMapController;
  Set<Marker> markers = {};
  static const CameraPosition initialCameraPosition = CameraPosition(target: LatLng(37.42796133580664, -122.085749655962), zoom: 14);




  final Completer<GoogleMapController> _controller = Completer();
  static const CameraPosition initialPosition = CameraPosition(target: LatLng(37.42796133580664, -122.085749655962), zoom: 14.0);
  static const CameraPosition targetPosition = CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.0, bearing: 192.0, tilt: 60);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return    Container(
      height: 400,
      child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: initialCameraPosition,
              markers: markers,
              zoomControlsEnabled: false,
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) {
                googleMapController = controller;
              },
            ),
            GestureDetector(
              onTap: (){
                _handlePressButton();
                },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    height: size.height*.06,
                    width: size.width*.11,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)
                    ),
                  ),
                  Container(
                      height: size.height*.03,
                      width: size.width*.06,
                      child: Image.asset('assets/images/data_transfer.png'))
                ],

              ),
            ),

            Positioned(
              bottom: 10,right: 10,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),primary: Colors.white),
                  onPressed: () async {
                Position position = await _determinePosition();

                googleMapController
                    .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 14)));


                markers.clear();

                markers.add(Marker(markerId: const MarkerId('currentLocation'),position: LatLng(position.latitude, position.longitude)));

                setState(() {});

              }, child:  Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset('assets/drawer_icon_images/current_location.png',color: Colors.blue,))),
            ),
          ]
      ),
    );

    //   Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Simple Google Map"),
    //     centerTitle: true,
    //   ),
    //   body: Column(
    //     children: [
    //
    //       Container(
    //         height: 400,
    //         child: Stack(
    //           children: [
    //           GoogleMap(
    //             initialCameraPosition: initialCameraPosition,
    //             markers: markers,
    //             zoomControlsEnabled: false,
    //             mapType: MapType.normal,
    //             onMapCreated: (GoogleMapController controller) {
    //               googleMapController = controller;
    //             },
    //           ),
    //             ElevatedButton(onPressed: _handlePressButton, child: const Text("Search Places"))
    //     ]
    //         ),
    //       ),
    //
    //     ],
    //   ),
    //   floatingActionButton: FloatingActionButton.extended(
    //     onPressed: () async {
    //       Position position = await _determinePosition();
    //
    //       googleMapController
    //           .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 14)));
    //
    //
    //       markers.clear();
    //
    //       markers.add(Marker(markerId: const MarkerId('currentLocation'),position: LatLng(position.latitude, position.longitude)));
    //
    //       setState(() {});
    //
    //     },
    //     label: const Text("Current Location"),
    //     icon: const Icon(Icons.location_history),
    //   ),
    //   // floatingActionButton: FloatingActionButton.extended(
    //   //   onPressed: () {
    //   //     goToLake();
    //   //   },
    //   //   label: const Text("To the lake!"),
    //   //   icon: const Icon(Icons.directions_boat),
    //   // ),
    // );
  }

  // Future<void> goToLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(targetPosition));
  // }




  //this is used for current location
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied');
    }

    Position position = await Geolocator.getCurrentPosition();

    return position;
  }




  // the below code is for search places

  Future<void> _handlePressButton() async {
    Prediction? p = await PlacesAutocomplete.show(
        context: context,
        apiKey: kGoogleApiKey,
        onError: onError,
        mode: _mode,
        language: 'en',
        strictbounds: false,
        types: [""],
        decoration: InputDecoration(
            hintText: 'Search',
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.white))),
        components: [Component(Component.country,"pk"),Component(Component.country,"usa")]);


    displayPrediction(p!,homeScaffoldKey.currentState);
  }

  void onError(PlacesAutocompleteResponse response){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response.errorMessage!)));
    //homeScaffoldKey.currentState!.showSnackBar(SnackBar(content: Text(response.errorMessage!)));
  }

  Future<void> displayPrediction(Prediction p, ScaffoldState? currentState) async {

    GoogleMapsPlaces places = GoogleMapsPlaces(
        apiKey: kGoogleApiKey,
        apiHeaders: await const GoogleApiHeaders().getHeaders()
    );

    PlacesDetailsResponse detail = await places.getDetailsByPlaceId(p.placeId!);

    final lat = detail.result.geometry!.location.lat;
    final lng = detail.result.geometry!.location.lng;

    markersList.clear();
    markersList.add(Marker(markerId: const MarkerId("0"),position: LatLng(lat, lng),infoWindow: InfoWindow(title: detail.result.name)));

    setState(() {});

    googleMapController.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, lng), 14.0));

  }

}
