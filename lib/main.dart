import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/parking_screen.dart';
import 'screens/permit_screen.dart';
import 'screens/street_sweeping_screen.dart';

void main() {
  runApp(const DeezParkApp());
}

class DeezParkApp extends StatelessWidget {
  const DeezParkApp({super.key});

  Widget withDrawer(Widget child) {
    return Scaffold(
      backgroundColor: const Color(0xFF003E29),
      appBar: AppBar(
        backgroundColor: const Color(0xFF003E29),
        title: const Text('DeezPark'),
      ),
drawer: Drawer(
  backgroundColor: const Color(0xFF003E29),
  child: Builder(
    builder: (context) => ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(color: Color(0xFF003E29)),
          child: Text('Milwaukee, WI', style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        ListTile(
          leading: const Icon(Icons.dashboard, color: Colors.white),
          title: const Text('Parking', style: TextStyle(color: Colors.white)),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/parking');
          },
        ),
        ListTile(
          leading: const Icon(Icons.badge, color: Colors.white),
          title: const Text('Permit', style: TextStyle(color: Colors.white)),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/permit');
          },
        ),
        ListTile(
          leading: const Icon(Icons.cleaning_services, color: Colors.white),
          title: const Text('Street Sweeping', style: TextStyle(color: Colors.white)),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/sweeping');
          },
        ),
        ListTile(
          leading: const Icon(Icons.history, color: Colors.white),
          title: const Text('Parking History', style: TextStyle(color: Colors.white)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.location_on, color: Colors.white),
          title: const Text('Location Tracking', style: TextStyle(color: Colors.white)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  ),
),

      body: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeezPark',
      theme: ThemeData(
        primaryColor: const Color(0xFF003E29),
        scaffoldBackgroundColor: const Color(0xFF003E29),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/parking': (context) => ParkingScreen(),
        '/permit': (context) => PermitScreen(),
        '/sweeping': (context) => StreetSweepingScreen(),
        // Add '/history' and '/location' here when screens are ready
      },
    );
  }
}
