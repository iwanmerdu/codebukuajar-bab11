import 'package:flutter/material.dart';
import 'package:proditi/dataDummy/dosenData.dart';

class ListDosen extends StatelessWidget{
  final String idDosen;
  final String namaDosen;
  final String keahlianDosen;
  final String gambarDosen;

// Konstruktor dengan parameter data dari class Data Dosen
  ListDosen(this.idDosen, this.namaDosen, this.keahlianDosen, this.gambarDosen);

  // ignore: non_constant_identifier_names
  void LihatDetail(BuildContext context){
    Navigator.pushNamed(context, '/detaildosen', arguments: idDosen);
  }

  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 5,
      child: Padding(padding: EdgeInsets.only(top: 15, bottom: 15),
      child: ListTile(
        leading: Image.network(gambarDosen),
        title: Text(namaDosen),
        subtitle: Text(keahlianDosen),
        // action click Detail Dosen
        onTap: () => LihatDetail(context),
      ),
      ),
      //return 
      ); 
  }
}

class DosenView extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("Data Dosen"),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index){
          // Ambil data dari 
        return ListDosen(
          dosenData[index].idDosen,
          dosenData[index].namaDosen,
          dosenData[index].keahlianDosen,
          dosenData[index].gambarDosen,
          ); 
      },
      itemCount: dosenData.length,
      ),
    );
  }
}
