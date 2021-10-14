import 'package:flutter/material.dart';

void main() => runApp(SejarahPage());

class SejarahPage extends StatelessWidget{
  const SejarahPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sejarah TI'),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            Image.network('https://ti.fst.ar-raniry.ac.id/wp-content/uploads/2021/02/download-1.jpg',
                width: 480.0,
                height: 160.0,
                fit: BoxFit.fill,
                ),
                // menambahkan teks
                Text(
                  'Sejarah Program Studi Teknologi Informasi',
                  style: TextStyle(fontSize: 12, fontFamily: "Serif", height: 2.0, fontWeight: FontWeight.bold),
                ),

                // memberikan jarak komponen
              Container(
                height: 15.0,
              ),

              Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.all(10.0),
                child: Text('Program Strata-1 Teknologi Informasi, Fakultas Sains dan Teknologi, Universitas Islam Negeri Ar-Raniry, resmi diselenggarakan pada Semester Ganjil tahun akademik 2018/2019, tepatnya 3 September 2019. Penyelenggaraan ini didasarkan pada Surat Keputusan Menteri Riset, Teknologi, dan Pendidikan Tinggi Republik Indonesia Nomor 249/KPT/1/2018 tentang Izin Pembukaan Program Studi Teknologi Informasi Program Sarjana dan Program Studi Kesejahteraan Sosial Program Sarjana pada Universitas Islam Negeri Ar-Raniry Banda Aceh di Kota Banda Aceh yang diselenggarakan oleh Kementerian Agama',
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
                child: Text('Lahirnya Surat Keputusan tersebut berdasarkan penilaian yang dilakukan oleh Kemenristek Dikti dan BAN-PT terhadap Instrumen Prodi Baru Teknologi Informasi yang disusun dan diusulkan oleh 7 (tujuh) orang Dosen bidang Teknologi Informasi UIN Ar-Raniry: 1) Ima Dwitawati, MBA, 2) Bustami, M.Sc., 3) Fadhla Binti Junus, M.Sc., 4) Hendri Ahmadian, M.IM, Khairan AR, M.Kom, Ghufran Ibnu Yasa, MT, dan Andika Prajana, M.Kom, dan didukung penuh oleh Dekan Fakultas Sains dan Teknologi, Prof. Dr. Mustanir Yahya, M.Sc.,  dan juga Rektor Universitas Islam Negeri Ar-Raniry Banda Aceh, Prof. Dr. Farid Wajdi Ibrahim, MA.',
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
                child: Text('Instrumen tersebut berisikan 9 (sembilan) kriteria yang menjadi standar minimal pendirian program studi yang ditetapkan oleh Kemenristek Dikti, yaitu: 1) Visi Misi Prodi, 2) Tata kelola, 3) Mahasiswa dan Lulusan,  4) Sumber Daya Manusia, 5) Kurikulum Pembelajaran dan Suasana Akademik, 6) Penelitian, 7) Pengabdian kepada Masyarakat, 8) Prasarana dan Sarana, dan 9) Keuangan. Tahapan penyusunanya dimulai dari uji kelayakan, dilanjutkan dengan perivikasi dan rekomendasi dari ketua Asosiasi Perguruan Tinggi Komputer dan Informatika (APTIKOM) Wilayah Aceh dan ketua APTIKOM Indonesia.',
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
