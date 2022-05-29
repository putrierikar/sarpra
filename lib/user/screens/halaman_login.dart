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
          buildBottom(),
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


  Widget buildBottom() => Container(
    padding: EdgeInsets.only(top: 50, left: 50, right: 50),
    child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: 'Ketuk untuk isi email kamu',
            hintStyle: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        SizedBox(height: 20,),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: 'Ketuk untuk isi password kamu',
            hintStyle: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        const SizedBox(height: 70,),
        Container(
          height: 40,
          width: double.infinity,
          child: TextButton(
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.pink,
              ),
            onPressed: (){}, 
            child: Text(
              'Masuk',
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
      ],
    ),
  );

}