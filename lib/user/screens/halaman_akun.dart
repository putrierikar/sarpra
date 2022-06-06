import 'package:flutter/material.dart';
import 'package:sarpra/user/screens/halaman_login.dart';

class HalamanAkun extends StatefulWidget {

  @override
  State<HalamanAkun> createState() => _HalamanAkunState();
}

class _HalamanAkunState extends State<HalamanAkun> {

  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }


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
          style: Theme.of(context).textTheme.headline4,
        ),
    ),
    height: 200,
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Colors.pink,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
      ),
    ),
  );

  Widget ProfilImage() => const CircleAvatar(
    radius: 72,
    backgroundColor: Colors.grey,
    backgroundImage: NetworkImage(
      'https://i.mydramalist.com/j4QWvc.jpg'
    ),
  );

  Widget buildContent() => Container(
    padding: const EdgeInsets.only(
      top: 100,
      left: 50,
    ),
    child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelStyle: Theme.of(context).textTheme.bodyText2,
            labelText: 'Nama Lengkap',
            icon: const Icon(
              Icons.account_box_rounded, 
              size: 45, 
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(height: 50,),
        TextFormField(
          decoration: InputDecoration(
            labelStyle: Theme.of(context).textTheme.bodyText2,
            labelText: 'Alamat Email',
            icon: const Icon(
              Icons.email_rounded, 
              size: 45, 
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(height: 100,),
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
            onPressed: (){}, 
            child: Text(
              'Simpan Akun',
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
          context, MaterialPageRoute(builder: ((context) => HalamanLogin())));
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

  Widget buildBottom() => BottomNavigationBar(
    iconSize: 26,
      selectedLabelStyle: Theme.of(context).textTheme.bodyText1,
      unselectedLabelStyle: Theme.of(context).textTheme.bodyText1,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
            ? Icon(Icons.article_sharp)
            : Icon(Icons.article_outlined),
          label: 'Lapor'
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 1
            ? Icon(Icons.access_time_filled_outlined)
            : Icon(Icons.access_time_outlined),
          label : 'Riwayat'
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 2
            ? Icon(Icons.account_circle_sharp)
            : Icon(Icons.account_circle_outlined),
          label: 'Akun'
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    
  );

}