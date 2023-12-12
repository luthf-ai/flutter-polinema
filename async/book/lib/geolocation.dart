import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';

  // Prak 7 Langkah 2
  Future<Position>? position;

  @override
  void initState() {
    super.initState();

    // position = getPosition();
    // getPosition().then((Position myPos) {
    //   myPosition =
    //       'Latitude: ${myPos.latitude.toString()} - Longitude: ${myPos.longitude.toString()}';
    //   setState(() {
    //     myPosition = myPosition;
    //   });
    // });

    // Prak 7 Langkah 3
    position = getPosition();
  }

  @override
  Widget build(BuildContext context) {
    // final myWidget =
    //     myPosition == '' ? const CircularProgressIndicator() : Text(myPosition);
    // ;

    // return Scaffold(
    //   appBar: AppBar(
    //       title: const Text('Aido Current Location')), // Soal 11
    //   body: Center(child: Text(myPosition)),
    // );

    // Prak 7 langkah 4
    return Scaffold(
        appBar: AppBar(title: Text('Current Location')),
        body: Center(
          child: FutureBuilder(
            future: position,
            builder: (BuildContext, AsyncSnapshot<Position> Snapshot) {
              if (Snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (Snapshot.connectionState == ConnectionState.done) {
                // prak 7 langkah 5
                if (Snapshot.hasError) {
                  return Text('Something terrible happened!');
                }
                return Text(Snapshot.data.toString());
              } else {
                return const Text('');
              }
            },
          ),
        ));
  }

  Future<Position> getPosition() async {
    //  await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    await Future.delayed(const Duration(seconds: 3));
    Position? position = await Geolocator.getCurrentPosition();
    return position;
  }
}
