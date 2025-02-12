import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  const DetailScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: Container(
          padding: EdgeInsets.only(
            top: 8,
            left: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    iconSize: 32,
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 0),
                child: Text(
                  'Di Sekitar Sekolah',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 16, right: 16),
        children: [
          buildKosCard(
            context,
            'assets/images/kos.jpg',
            'SMART KOS | Kos CEMPAKA 2',
            'Jl. Argopuro Gg. H Bisri (RT.15/RW.20), Citrodiwangsan, Kec. Lumajang, Kabupaten Lumajang, Jawa Timur 67312',
            'Putri',
            'Rp 000.000 / Bulan',
          ),
          buildKosCard(
            context,
            'assets/images/kos.jpg',
            'SMART KOS | Kos Putra Agung',
            'Jl. Brigjen Katamso Gg. Al Hidayah No.31, Tompokersan, Kec. Lumajang, Kabupaten Lumajang, Jawa Timur 67316',
            'Putra',
            'Rp 000.000 / Bulan',
          ),
          buildKosCard(
            context,
            'assets/images/kos.jpg',
            'SMART KOS | Kos Putri Bu Fitri',
            'Belakang salon cinita, Jl. Kapten Kyai Ilyas, Tompokersan, Kec. Lumajang, Kabupaten Lumajang, Jawa Timur 67311',
            'Putri',
            'Rp 000.000 / Bulan',
          ),
          buildKosCard(
            context,
            'assets/images/kos.jpg',
            'SMART KOS | Kos Putri Noor',
            'Depan RSI, Jl. Kyai Muksin No.26, Citrodiwangsan, Kec. Lumajang, Kabupaten Lumajang, Jawa Timur 67312',
            'Putri',
            'Rp 000.000 / Bulan',
          ),
          buildKosCard(
            context,
            'assets/images/kos.jpg',
            'SMART KOS | Kos Rahayu',
            'Jl. Panglima Besar Sudirman No.227b, Tompokersan, Kec. Lumajang, Kabupaten Lumajang, Jawa Timur 67316',
            'Putri',
            'Rp 000.000 / Bulan',
          ),
          buildKosCard(
            context,
            'assets/images/kos.jpg',
            'SMART KOS | Kos Normi',
            'Jl. Gubernur Suryo No.19, Tompokersan, Kec. Lumajang, Kabupaten Lumajang, Jawa Timur 67316',
            'Campur',
            'Rp 000.000 / Bulan',
          ),
        ],
      ),
    );
  }

  Widget buildKosCard(BuildContext context, String imagePath, String title,
      String address, String type, String price) {
    return Card(
      color: Colors.white,
      elevation: 2, // Menambahkan efek bayangan
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: 140, // Pastikan tinggi tetap
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                child: SizedBox.expand(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover, // Pastikan gambar mengisi penuh
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 6), // Beri padding untuk teks
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      title,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on, color: Colors.purple, size: 18),
                        SizedBox(width: 2),
                        Expanded(
                          child: Text(
                            address,
                            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Text(
                            type,
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          price,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
