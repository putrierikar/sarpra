import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  Widget buildTop() => Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.center,
    children: [
      CoverImage(),
      Positioned(
        top: 125,
        child: ProfilImage(),
      ),
    ],
  );
  
  Widget CoverImage() => Container( 
    child: Padding(
      padding: const EdgeInsets.all(20),
        child: Text(
          'Akun Kamu', 
          style: TextStyle(
            fontFamily: 'Sofia Pro',
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 25,  
            letterSpacing: 1,
          ),
        ),
    ),
    height: 200,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.pink,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
      ),
    ),
  );

  Widget ProfilImage() => CircleAvatar(
    radius: 72,
    backgroundColor: Colors.grey,
    backgroundImage: NetworkImage(
      'https://i.mydramalist.com/j4QWvc.jpg'
    ),
  );

  Widget buildContent() => Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.only(
      top: 100,
      left: 50,
    ),
    child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelStyle: TextStyle(fontSize: 18),
            labelText: 'Nama Lengkap',
            icon: Icon(Icons.account_box_rounded, size: 45, color: Colors.grey,)
          ),
        ),
        SizedBox(
          height: 50,
        ),
        TextFormField(
          decoration: InputDecoration(
            floatingLabelStyle: TextStyle(fontSize: 18),
            labelText: 'Alamat Email',
            icon: Icon(Icons.email_rounded, size: 45, color: Colors.grey,)
          ),
        ),
      ],
    ),
      
    
  );

}