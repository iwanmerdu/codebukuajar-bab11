import 'package:flutter/material.dart';
void main() => runApp(KontakPage());

class KontakPage extends StatelessWidget{
  const KontakPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kontak Kami'),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
                // menambahkan teks
                Text(
                  'Kontak Program Studi',
                  style: TextStyle(fontSize: 12, fontFamily: "Serif", height: 2.0, fontWeight: FontWeight.bold),
                ),

                // memberikan jarak komponen
              Container(
                height: 15.0,
              ),

              Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.all(10.0),
                child: Text('Alamat : Lorong Ibnu Sina No.2, Kopelma Darussalam, Kec. Syiah Kuala, Kota Banda Aceh, Aceh',
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.justify,
                softWrap: true,
                ),
              ),
              // memberikan jarak komponen
              Container(
                height: 5.0,
              ),
              

              Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.all(10.0),
                child: Text('Telepon : +651-7557321, +651-7557317',
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.justify,
                softWrap: true,
                ),
              ),
              // memberikan jarak komponen
              Container(
                height: 5.0,
              ),

              Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.all(10.0),
                child: Text('Email : fst.ti@ar-raniry.ac.id',
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.justify,
                softWrap: true,
                ),
              ),

          ]
        )
      ),
    );
  }
}
