import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sarpra/user/user_screens.dart';
import 'package:image_picker/image_picker.dart';


class FormLapor extends StatefulWidget {

  @override
  State<FormLapor> createState() => _FormLaporState();
}

class _FormLaporState extends State<FormLapor> {

  File? image;

  Future getImage() async{
    final ImagePicker _picker = ImagePicker();
    final XFile? imagePicked = await _picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          buildContent(),

        ],
      ),
    );
  }

  Widget buildContent() => Container(
    
    padding: const EdgeInsets.only(
      top: 50,
      left: 30,
      right: 10,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        // ignore: prefer_const_constructors
        Text("Lokasi", 
        textAlign: TextAlign.left,
        style: TextStyle(color:Colors.black),
        ),
        const SizedBox(height: 10,),
        TextFormField(
          decoration: InputDecoration(
            labelStyle: Theme.of(context).textTheme.bodyText2,
            hintText: 'Cth: Ruang 01',
            // ignore: unnecessary_new
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(10.0),
            ),
          ),
        ),
        const SizedBox(height: 30,),
        // ignore: prefer_const_constructors
        Text("Laporan kamu", 
        textAlign: TextAlign.left,
        style: TextStyle(color:Colors.black),
        ),
         const SizedBox(height: 10,),
        TextButton(
          style: 
            TextButton.styleFrom(backgroundColor: Colors.pink),
            onPressed: () async{
              getImage();
            },
            child: const Text(
              'Open Image',
              style: TextStyle(color: Colors.white),
            ),
        ),
        const SizedBox(height: 30,),
        image != null ? 
          Container(height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Image.file(
                      image!,
                      fit: BoxFit.cover,
                    ))
          :Container(),
        const SizedBox(height: 10,),
        const Text("Keterangan", 
        textAlign: TextAlign.left,
        style: TextStyle(color:Colors.black),
        ),
        const SizedBox(height: 10,),
         TextFormField(
          decoration: InputDecoration(
            labelStyle: Theme.of(context).textTheme.bodyText2,
            hintText: 'Cth: Monitor dan AC rusak tidak bisa menyala',
            // ignore: unnecessary_new
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(10.0), 
            ),
          ),
        ),
        const SizedBox(height: 50,),
        Container(
          height: 40,
          width: double.infinity,
          padding: const EdgeInsets.only(right: 50),
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: Colors.pink,
            ),
            onPressed: ()async{}, 
            child: Text(
              'Laporkan',
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        const SizedBox(height: 15,),
        Container(
          height: 40,
          width: double.infinity,
          padding: const EdgeInsets.only(right: 50),
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Colors.pink),
              ),
            ),
            onPressed: (){
              Navigator.push(
          context, MaterialPageRoute(builder: ((context) => HalamanLapor())));
            }, 
            child: Text(
              'Keluar',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),
        SizedBox(height: 50,)
      ],
    ),
  );
}