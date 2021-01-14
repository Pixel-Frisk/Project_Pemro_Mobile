import 'dart:math' as mathdart;
import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart' as mb;
import 'package:geolocator/geolocator.dart' as geo;

class Map extends StatefulWidget{
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map>{
  var token = 'pk.eyJ1IjoiZnJhbmtpZWYiLCJhIjoiY2tqd2NuNm5uMDB1ZDJ1cG45MWxiYWRoYyJ9.G_xL8FWeB8SLEZQoO9nIiw';

  mb.MapboxMapController mapController;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(title: Text('Map')),
      body: Center(
        child: Column(
          children: [
            buildMap(),
            //buildBtnBottomRow(),
            listLaporan(),
          ],
        ),
      ),
    );
  }

  Widget listLaporan(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 400,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: EdgeInsets.all(8.0),
        ),
        Container(
          width: 400,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(8.0),
          child: Text("Banjir Daerah Muncar", style: TextStyle(
              color: Colors.white,
              fontSize: 20)),
        ),
        Container(
          width: 400,
          height: 5,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: EdgeInsets.all(8.0),
        ),
        Container(
          width: 400,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(8.0),
          child: Text("Banjir Daerah Rogojampi", style: TextStyle(
              color: Colors.white,
              fontSize: 20)),
        ),
        Container(
          width: 400,
          height: 5,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: EdgeInsets.all(8.0),
        ),
        Container(
          width: 400,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(8.0),
          child: Text("Banjir Daerah Ketapang", style: TextStyle(
              color: Colors.white,
              fontSize: 20)),
        ),
      ],
    );
  }

  Widget buildMap(){
    return Container(
      height: 400,
      child: mb.MapboxMap(
        accessToken: token,
        styleString: 'mapbox://styles/mapbox/streets-v11',
        initialCameraPosition: new mb.CameraPosition(
            target: mb.LatLng(-8.1766639, 133.6916075),
            zoom: 8
        ),
        onMapCreated: mapCreated,
        onMapClick: mapClicked,
      ),
    );
  }

  void mapCreated(mb.MapboxMapController controller){
    mapController = controller;
    print('map created');

    var lokasi = mb.LatLng(-8.1766639, 133.6916075);

    mapController.addCircle(new mb.CircleOptions(
      circleRadius: 8,
      circleColor: 'blue',
      circleOpacity: 1,
      geometry: lokasi,
      draggable: false,
    ));
    checkPermissionGps();
  }

  void checkPermissionGps(){
    print("Checking Location Begin");
    geo.Geolocator.isLocationServiceEnabled().then((bool isEnabled){
      print("Location Service Enabled? : $isEnabled");
      if(isEnabled == false){
        print("Layanan Lokasi Tidak Tersedia");
      }
      else{
        geo.Geolocator.checkPermission().then((geo.LocationPermission locPerm){
          if(locPerm == geo.LocationPermission.deniedForever){

          }
          else if(locPerm == geo.LocationPermission.denied){
            geo.Geolocator.requestPermission().then((geo.LocationPermission permRes){
              if(permRes == geo.LocationPermission.whileInUse || permRes == geo.LocationPermission.always){
                getCurrentLoc();
              } else{
                print('User tidak memberikan permission');
              }
            });
          }
          else{
            getCurrentLoc();
          }
        });
      }
    });
  }

  void getCurrentLoc(){
    geo.Geolocator.getCurrentPosition().then((geo.Position pos){
      if(mapController != null){
        var gpsLoc = new mb.LatLng(pos.latitude, pos.longitude);
        var newCamLoc = mb.CameraUpdate.newLatLng(gpsLoc);
        mapController.animateCamera(newCamLoc);
        mapController.addCircle(new mb.CircleOptions(
          geometry: gpsLoc,
          circleColor: 'yellow',
          circleStrokeColor: 'black',
          circleStrokeWidth: 1,
          circleRadius: 10,
          draggable: false,
        ));
      }
    });
  }

  void mapClicked(mathdart.Point<double> point, mb.LatLng latlng){
    if(mapController != null){
      mapController.addCircle(
        new mb.CircleOptions(
          circleRadius: 8,
          circleColor: 'red',
          circleOpacity: 1,
          geometry: latlng,
          draggable: false,
        ),
      );
    }
  }
}