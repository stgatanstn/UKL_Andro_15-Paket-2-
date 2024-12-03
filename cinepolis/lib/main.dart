import 'package:cinepolis/pages/booking.dart';
import 'package:cinepolis/pages/cinema.dart';
import 'package:cinepolis/pages/home.dart';
import 'package:cinepolis/pages/login.dart';
import 'package:cinepolis/pages/movie.dart';
import 'package:cinepolis/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'splash',
        routes: {
          'splash': (context) => const Splash(),
          'login': (context) => const Login(),
          'home': (context) => const Homepage(),
          'booking': (context) => const Booking(),
          'movie': (context) => const Movie(),
          'Cinema': (context) => const Cinema(),
        });
  }
}
