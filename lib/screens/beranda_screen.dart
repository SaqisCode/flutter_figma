import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PembentukLengkung extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height - 15);

    path.quadraticBezierTo(15, size.height, 30, size.height);

    path.lineTo(size.width - 30, size.height);

    path.quadraticBezierTo(
        size.width - 15, size.height, size.width, size.height - 15);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 37, 211, 102),
        title: Padding(
          padding: EdgeInsets.only(left: 0, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/logo_flutter.png',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'smartkos',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 7, top: 12),
            child: IconButton(
              icon: Icon(Icons.notifications, color: Colors.white, size: 30),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: const Color.fromARGB(255, 37, 211, 102),
              width: double.infinity,
              padding: EdgeInsets.only(left: 16, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "#SmartKos",
                    style: GoogleFonts.poppins(
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "sat-set anti ribet",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
            ClipPath(
              clipper: PembentukLengkung(),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 37, 211, 102),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon:
                          Icon(Icons.search, color: Colors.grey, size: 20),
                      hintText: 'Mau ngekos dekat mana?',
                      hintStyle: GoogleFonts.poppins(fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 37, 211, 102),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding:
                        EdgeInsets.only(right: 2, left: 2, top: 16, bottom: 16),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(6, (index) {
                          return Container(
                            width: 170,
                            height: 100,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16, bottom: 8),
                    child: Text(
                      "Rekomendasi Kos Untuk Anda",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(6, (index) {
                        return Container(
                          width: 200,
                          height: 220,
                          margin: EdgeInsets.only(
                            right: 12,
                            left: index == 0 ? 16 : 0,
                            bottom: 10,
                            top: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 3,
                                offset: Offset(1, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                child: Image.network(
                                  'data:image/jpeg;base64,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',
                                  height: 100,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 4),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'Jenis Kos*',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Nama Kos | Pemilik*',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 1),
                                    Text(
                                      'Lokasi Kos*',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Rp Harga Kos*',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16, bottom: 8),
                    child: Text(
                      "Di Sekitar Kampus",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(6, (index) {
                        return Container(
                          width: 150,
                          height: 120,
                          margin: EdgeInsets.only(
                            right: 12,
                            left: index == 0 ? 16 : 0,
                            bottom: 10,
                            top: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 3,
                                offset: Offset(1, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                child: Image.network(
                                  'data:image/jpeg;base64,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',
                                  height: 75,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nama Kampus*',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
