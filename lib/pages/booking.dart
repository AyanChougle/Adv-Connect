import 'package:adv_connect/components/app_style.dart';
import 'package:flutter/material.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bgcolor,
      body: SingleChildScrollView(
        child: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Book Appointment'),
        ),
      ),
    );
  }
}
