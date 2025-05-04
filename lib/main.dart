
import 'package:flutter/material.dart';
import 'screens/landing_screen.dart';
import 'screens/history_screen.dart';

void main() {
  runApp(DeezparkApp());
}

import 'package:flutter/material.dart';

void main() {
  runApp(const DeezParkApp());
}

class DeezParkApp extends StatelessWidget {
  const DeezParkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('deezpark'),
          centerTitle: true,
        ),
        body: const DeezParkHome(),
      ),
    );
  }
}

class DeezParkHome extends StatelessWidget {
  const DeezParkHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'MILWAUKEE, WI',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: const Text('FRIDAY, APRIL 18'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                child: const Text('SET DATE'),
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text(
            'PARK ON THIS SIDE',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          const Icon(
            Icons.arrow_back,
            size: 48,
          ),
          const SizedBox(height: 32),
          const Divider(),
          const SizedBox(height: 16),
          const Text(
            'PARKING STATUS',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'ENFORCEMENT VEHICLE NEARBY',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: const Text('CHECK PARKING RULES'),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            child: const Text('CAPTURE PHOTO'),
          ),
        ],
      ),
    );
  }
}