# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

Project: Flutter web app for Milwaukee parking regulations (deezpark_flutter_web)

Commands

- Install deps
  - flutter pub get

- Run (web, hot reload)
  - flutter run -d chrome

- Lint / static analysis
  - flutter analyze

- Tests
  - Run all: flutter test
  - Run a single test by name: flutter test --name 'partial or regex of test name'
  - Run a specific file: flutter test test/widget_test.dart

- Format code
  - dart format -o write .

- Build (web)
  - Release build: flutter build web --release
  - Output: build/web/

Architecture and code structure

- Entry point: lib/main.dart
  - DeezParkApp configures a MaterialApp with a global dark-green theme and named routes.
  - Routes:
    - '/': WelcomeScreen
    - '/parking': ParkingScreen
    - '/permit': PermitScreen
    - '/sweeping': StreetSweepingScreen

- Screens: lib/screens/*.dart
  - Each page is a StatelessWidget with its own Scaffold and page-specific AppBar.
  - Navigation uses Navigator.pushNamed with the routes above.
  - ParkingScreen defines a Drawer for app navigation; main.dart also defines a withDrawer(...) helper that is currently not applied, so drawer usage is per-screen rather than centralized.

- Additional screens present but not currently wired in routes
  - history_screen.dart, landing_screen.dart

- Lint configuration
  - analysis_options.yaml includes package:flutter_lints/flutter.yaml

Repo-specific notes

- The template test at test/widget_test.dart references MyApp, but the app’s entry widget is DeezParkApp. If tests are enabled, update the test to pump DeezParkApp (or add a MyApp alias) before expecting them to pass.
