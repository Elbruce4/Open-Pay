import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:open_pay/ResponsibeQuerys/index.dart';

import '../Dio/Map/index.dart';

class Map extends StatefulWidget {
  const Map({super.key});

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {

  static final LatLng _kMapCenter = LatLng(20.620118, -100.486115);
  static final CameraPosition _kInitialPosition = CameraPosition(target: _kMapCenter, zoom: 13.0, tilt: 0, bearing: 0);
  Set<Marker> markers = Set();

  getStores () async {
    try {
      var response = await getStoresUbication(context , 20.620118 , -100.486115);
      addMarkers(response);
    } catch (e) {
      return e;
    }
  }

  addMarkers (stores) {
    print("------------------------STORES------------------");
    print(stores);
    print(stores.runtimeType);
    print(stores.length);
    for (var i = 0; i < stores.length; i++) {
      Marker resultMarker = Marker(
        markerId: MarkerId(stores[i]["name"].toString()),
        infoWindow: InfoWindow(title: stores[i]["name"].toString()),
        position: LatLng(stores[i]["geolocation"]["lat"] , stores[i]["geolocation"]["lng"]),
      );
      setState(() {
        markers.add(resultMarker);
      });
    }
    print("Cantidad de canchas encontradas: ${markers.length}");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getStores();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaHeight(context, 0.88),
      child: GoogleMap(
        initialCameraPosition: _kInitialPosition,
        markers: markers,
      ),
    );
  }
}