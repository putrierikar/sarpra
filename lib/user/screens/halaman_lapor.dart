import 'package:flutter/material.dart';
import 'package:sarpra/user/user_screens.dart';

class HalamanLapor extends StatefulWidget {
  const HalamanLapor({Key? key}) : super(key: key);

  @override
  State<HalamanLapor> createState() => _HalamanLaporState();
}

class _HalamanLaporState extends State<HalamanLapor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          buildContent(),
          buildButton(),
          //buildBottom(),
        ],
      ),
    );
  }



  Widget buildContent() => Container(
    padding: EdgeInsets.only(top: 40, left: 50, right: 70),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Halo, Sobat Sarpra!',
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(height: 40,),
        Text(
          'Kamu menemukan fasilitas yang rusak di ruang kelas, lab, ruang guru, aula, pokoknya di lingkungan sekolah kita? Laporin aja skuy!',
          style: TextStyle(height: 2.5, color: Colors.grey, fontSize: 18),
        ),
      ],
    ),
  );


  Widget buildButton() => Container(
    padding: EdgeInsets.only(top: 50, left: 50, right: 50),
    child: Column(
      children: [
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
            onPressed: (){
              Navigator.push(
          context, MaterialPageRoute(builder: ((context) => FormLapor())));
            }, 
            child: Text(
              'LAPOR',
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
      ],
    ),
  );
}