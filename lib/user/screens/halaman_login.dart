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
          buildContent(),
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


  Widget buildContent() => Container(
    padding: EdgeInsets.only(top: 20, left: 50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Selamat Datang di Sobat Sarpra!',
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(height: 40,),
        Text(
          'Kamu menemukan fasilitas di sekolah yang rusak?',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        SizedBox(height: 30,),
        Text(
          'Laporin ke Sobat Sarpra aja, yuk!',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    ),
  );

}