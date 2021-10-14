import 'package:flutter/material.dart';
import 'package:proditi/screen/Gallery.dart';
import 'package:proditi/screen/Mahasiswa.dart';
import 'package:proditi/screen/detailDosen.dart';
import 'package:proditi/screen/dosenView.dart';
import 'package:proditi/screen/kontak.dart';
import 'package:proditi/screen/menuView.dart';
import 'package:proditi/screen/sejarah.dart';
import 'package:proditi/screen/visi.dart';
import 'package:proditi/screen/info.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // menggunakan widget MaterialApp
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
        canvasColor: Colors.white,
        textTheme: ThemeData.light().textTheme.copyWith(
        title: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      )
      ),

// berikan menu
    //initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => MainPage(),
      '/sejarah': (context) => SejarahPage(),
      '/kontak' : (context) => KontakPage(),
      '/visi' : (context) => VisiPage(),
      '/dosen': (context) => DosenView(),
      '/detaildosen': (context)=> DetailDosen()
    },
    );

  }
}

// class MainPage
class MainPage  extends StatefulWidget {
  const MainPage ({ Key? key }) : super(key: key);
  
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage > {
  final PageStorageBucket _bucket= PageStorageBucket();
  final List<HalamanPage> halaman=[
    HalamanPage('Beranda', Icons.home, MenuView(key: PageStorageKey('key--menu'))),
    HalamanPage('Info Prodi', Icons.new_releases, Info(key: PageStorageKey('key--info'))),
    HalamanPage('Gallery', Icons.image, Gallery(key: PageStorageKey('key--gallery'))),
    HalamanPage('Info Mahasiswa', Icons.new_releases_rounded, Mahasiswa(key: PageStorageKey('key--mahasiswa'))),
];

int pilihScreen=0;  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(halaman[pilihScreen].judul),
        leading: Icon(Icons.home),
        ),
        body: PageStorage(
          child: halaman[pilihScreen].screen,
          bucket: _bucket,
          ),

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: pilihScreen,
            onTap: (index){
              setState(() {
                pilihScreen=index;
                });
            },
            items: halaman.map((item){
              return BottomNavigationBarItem(
                title: Text(item.judul),
                icon: Icon(item.icon),
                backgroundColor: Colors.blue[900],
                );
            }).toList(),
            ),
    );

  }
}

// class Halaman
class HalamanPage {
  final String judul;
  final IconData icon;
  final Widget screen;

  HalamanPage(this.judul, this.icon, this.screen);
}

