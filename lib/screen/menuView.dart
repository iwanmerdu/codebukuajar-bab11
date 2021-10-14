import 'package:proditi/dataDummy/menuData.dart';
import 'package:flutter/material.dart';


class ListMenu extends StatelessWidget{
  final String idMenu;
  final String judulMenu;
  final String gambarMenu;

  ListMenu(
    this.idMenu, 
    this.judulMenu, 
    this.gambarMenu
    );

  
  void pindahScreen(BuildContext context) {
     switch (idMenu) {
       case '01':
       Navigator.pushNamed(context, '/visi');  
       break;
       case '02':
       Navigator.pushNamed(context, '/sejarah');
       break;
       case '03':
       Navigator.pushNamed(context, '/dosen');
       break;
       case '04':
       Navigator.pushNamed(context, '/mahasiswa');
       break;
       case '05':
       Navigator.pushNamed(context, '/kontak');
       break;
       default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => pindahScreen(context),
      highlightColor: Colors.white.withAlpha(30),
      splashColor: Colors.white.withAlpha(20),
      child: Card(
        elevation: 5,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  gambarMenu,
                  height: 65,
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Center(
                  child: Text(judulMenu, style: Theme.of(context).textTheme.title))
            ],
          ),
        ),
      ),
   
    );

  }
}

class MenuView extends StatelessWidget{
  const MenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: new Container(
        child: GridView(
          //crossAxisCount: 2),
          padding: EdgeInsets.all(15),
        children: menuData
            .map((mn) => ListMenu(mn.idMenu, mn.judulMenu, mn.gambarMenu))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
       
    ),
     );
    
  }
}