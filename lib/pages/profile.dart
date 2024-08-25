import 'package:adv_connect/components/app_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        onPressed: signUserOut,
        icon: const Icon(
          Icons.logout,
        ),
      ),
      backgroundColor: styles.bgcolor,
      body: const SingleChildScrollView(
          //child:
          //  AppBar(
          //   backgroundColor: Colors.black,
          //   title: const Text('Profile'),
          // ),

          ),
    );
  }
}
