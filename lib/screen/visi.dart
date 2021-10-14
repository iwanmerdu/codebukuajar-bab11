import 'package:flutter/material.dart';
void main() => runApp(VisiPage());

class VisiPage extends StatelessWidget{
  const VisiPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visi Misi TI'),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
                // menambahkan teks
                Text(
                  'Visi Misi Program Studi',
                  style: TextStyle(fontSize: 12, fontFamily: "Serif", height: 2.0, fontWeight: FontWeight.bold),
                ),

                // memberikan jarak komponen
              Container(
                height: 15.0,
              ),

              Text('VISI',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),

              Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.all(10.0),
                child: Text('Menjadi Program Studi yang Modern Dalam Pengintegrasian Islam dan Teknologi Informasi yang Berazaskan Kebangsaan dan Keuniversalan Pada Tahun 2034.',
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.justify,
                softWrap: true,
                ),
              ),
              // memberikan jarak komponen
              Container(
                height: 5.0,
              ),
              
              Text('MISI',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),

              Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.all(10.0),
                child: Text('Menyelenggarakan Pendidikan dan pengajaran bidang Teknologi Informasi yang inovatif dan terintegrasi dengan nilai-nilai keislaman untuk membangun kesadaran berbangsa dan bernegara',
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
                child: Text('Mengembangkan tradisi riset bidang Teknologi Informasi yang produktif, Inovatif dan aplikatif yang bermanfaat bagi kesejahteraan masyarakat Aceh, Indonesia dan dunia.',
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.justify,
                softWrap: true,
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.all(10.0),
                child: Text('Melaksanakan pengabdian yang berbasis pada Teknologi Informasi dengan identitas keislaman, kebangsaan dan keterampilan secara modern bagi semua lapisan masyarakat, Institusi, industri dan Pemerintah.',
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.justify,
                softWrap: true,
                ),
              )

          ]
        )

      ),
    );
  }
}
