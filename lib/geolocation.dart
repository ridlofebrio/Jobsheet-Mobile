import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Geolocation extends StatefulWidget {
  const Geolocation({super.key});

  @override
  State<Geolocation> createState() => _GeolocationState();
}

class _GeolocationState extends State<Geolocation> {
  String myPosition = '';
  Future<Position>? position;
  // @override
  // void initState() {
  //   super.initState();
  //   getPosition().then((Position myPods) {
  //     myPosition =
  //         'Latitude: ${myPods.latitude.toString()} Longitude: ${myPods.longitude.toString()}';
  //     setState(() {
  //       myPosition = myPosition;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Current Location'),
        ),
        body: Center(
          child: FutureBuilder(
              future: position,
              builder:
                  (BuildContext context, AsyncSnapshot<Position> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }
                  Position pos = snapshot.data!;
                  return Text(
                    'Latitude: ${pos.latitude.toStringAsFixed(4)}\nLongitude: ${pos.longitude.toStringAsFixed(4)}',
                    textAlign: TextAlign.center,
                  );
                } else {
                  return const Text('Error');
                }
              }),
        ));
  }

  Future<Position> getPosition() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Layanan lokasi tidak aktif');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Izin lokasi ditolak');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Izin lokasi ditolak secara permanen');
    }

    Position position = await Geolocator.getCurrentPosition();
    return position;
  }

  @override
  void initState() {
    super.initState();
    position = getPosition();
  }
}
