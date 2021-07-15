// ignore: unused_import
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:scanlly/Screens/HomeScreen.dart';
import 'Location_Provider.dart';

class GoogleMapPage extends StatefulWidget {
  static const routeName = '/GoogleMap';
  @override
  _GoogleMapPageState createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<LocationProvider>(context, listen: false).initialization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 35,
          color: Colors.white,
        ),
        title: Image.asset(
          'assets/logo.png',
          scale: 2.9,
          alignment: Alignment.centerLeft,
        ),
        backgroundColor: Colors.blue,
        elevation: 4.0,
        actions: [],
      ),
      body: googleMapUI(),
    );
  }

  Widget googleMapUI() {
    return Consumer<LocationProvider>(builder: (consumerContext, model, child) {
      if (model.locationPosition != null) {
        return Column(
          children: [
            Expanded(
                child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: model.locationPosition,
                zoom: 18,
              ),
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              onMapCreated: (GoogleMapController controller) {},
            ))
          ],
        );
      }
      return Container(child: Center(child: CircularProgressIndicator()));
    });
  }
}
