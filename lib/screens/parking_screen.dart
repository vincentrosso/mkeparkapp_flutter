import 'package:flutter/material.dart';

class ParkingScreen extends StatelessWidget {
  const ParkingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003E29),
      appBar: AppBar(
        backgroundColor: const Color(0xFF003E29),
        title: const Text('deezpark', style: TextStyle(color: Colors.white)),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF003E29),
        child: ListView(
          padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Color(0xFF003E29)),
                child: Text('Milwaukee, WI', style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              ListTile(
                leading: const Icon(Icons.dashboard),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/landing');
                },
              ),
              ListTile(
                leading: const Icon(Icons.badge),
                title: const Text('Permit'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/permit');
                },
              ),
              ListTile(
                leading: const Icon(Icons.cleaning_services),
                title: const Text('Street Sweeping'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/sweeping');
                },
              ),
              ListTile(
                leading: const Icon(Icons.history),
                title: const Text('Parking History'),
                onTap: () {
                  Navigator.pop(context);
                  // TODO: Navigator.pushNamed(context, '/history');
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text('Location Tracking'),
                onTap: () {
                  Navigator.pop(context);
                  // TODO: Navigator.pushNamed(context, '/location');
                },
              ),
            ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Friday, April 18',
                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 16),
                Text(
                  'Park on the odd-numbered side',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
