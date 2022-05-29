import 'package:flutter/material.dart';

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({Key? key}) : super(key: key);

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          buildTop(),
          
        ],
      ),
    );
  }

  Widget buildTop() => Container(
    color: Colors.grey,
    child: Image.asset(
      'assets/images/SoS.jpg',
      height: 470,
      width: double.infinity,
      fit: BoxFit.cover,
    ), 
  );
}