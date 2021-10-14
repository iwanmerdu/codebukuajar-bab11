import 'package:flutter/material.dart';
import 'package:proditi/dataDummy/dosenData.dart';

class DetailDosen extends StatelessWidget {
  const DetailDosen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments as String;
    final pilihDosen = dosenData.firstWhere((dosen) => dosen.idDosen == id);
  
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Dosen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15)
                  ),
                  child: Image.network(
                    pilihDosen.gambarDosen,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                
                Positioned(
                  bottom: 20, 
                  right: 15, 
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          pilihDosen.namaDosen,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                        
                        Text(
                          "Jabatan: " + pilihDosen.jabatanDosen,
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            
            SizedBox(
              height: 4,
            ),
            
            Card(
              margin: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  //Icon(Icons.school, size: 40,),
                  IconButton(
                    icon: Icon(Icons.school),
                    tooltip: 'Data Publikasi',
                    color: Colors.blue,
                    onPressed: () {

                    },
                    ),
                  Text('Data Publikasi', style: TextStyle(fontSize: 12, color: Colors.blue)),
                ],
              ),
            ),
            
            Card(
              margin: EdgeInsets.all(10),
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(pilihDosen.biodataSingkat),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
