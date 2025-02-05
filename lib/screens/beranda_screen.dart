import 'package:flutter/material.dart';

class PembentukLengkung extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Mulai dari kiri atas
    path.lineTo(0, size.height - 20);

    // Lengkungan kecil di ujung kiri
    path.quadraticBezierTo(10, size.height, 30, size.height);

    // Garis lurus di tengah
    path.lineTo(size.width - 40, size.height);

    // Lengkungan kecil di ujung kanan
    path.quadraticBezierTo(
        size.width - 10, size.height, size.width, size.height - 30);

    // Kembali ke atas
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              'data:image/png;base64,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',
              height: 40,
              width: 40,
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'smartkos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '#satset_anti_ribet',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: PembentukLengkung(),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 37, 211, 102),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                      offset: Offset(0, 1), // Mengatur posisi shadow (x, y)
                    ),
                  ],
                ),
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    hintText: 'Mau ngekos dekat mana?',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
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
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16, bottom: 8),
                    child: Text(
                      "Rekomendasi Kos Untuk Anda",
                      style: TextStyle(
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
                            bottom: 10, // Tambahkan margin bottom
                            top: 5, // Tambahkan margin top
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
                              // Gambar
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                child: Image.network(
                                  'data:image/jpeg;base64,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', // Ganti dengan URL gambar yang diinginkan
                                  height: 100,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // Informasi
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
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Nama Kos | Pemilik*',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 1),
                                    Text(
                                      'Lokasi Kos*',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Rp Harga Kos*',
                                      style: TextStyle(
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
                      style: TextStyle(
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
                            bottom: 10, // Tambahkan margin bottom
                            top: 5, // Tambahkan margin top
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
                              // Gambar
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                child: Image.network(
                                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUREhMVFRUXFxcYFxcWFxUXFhYVFxUXGBUVFhcYHSggGBolHRcXITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGy0lHyUvLS0tLS0tLy0tLS0vLS0tLS0tLS0tLS0tLS0tLi0tLS0tLS0tNS0tLS0tLS0tLS0tLf/AABEIAMIBAwMBIgACEQEDEQH/xAAcAAABBAMBAAAAAAAAAAAAAAAEAgMFBgABBwj/xABPEAACAQIDBAYEDAMECAQHAAABAgMAEQQSIQUGMUETIlFhcZEygaGxBxQjM0JSYnKissHRQ4KSJGPC8BVTZHN0k6OzFiXD8TRERVVltNL/xAAaAQADAQEBAQAAAAAAAAAAAAABAgMEAAUG/8QAMhEAAgIBAgQEAwcFAQAAAAAAAAECEQMSIQQxQVETMpHwInGxBUJhgaHB0RQjM0NS4f/aAAwDAQACEQMRAD8Au16Xeh81Ooa8CLPSkhdqSuG6cPGHdFFgzqLEk6lUYi17cSOF+3g9BhTKSoLKLauBwvyUnTNx7badoqcCAAADQaDwr1OD4W3rny6A1DIWsIp4ikla9mztQzlrRWnstaIo2NY1lpJWnbVrLRsNjRSklKey1lqOo4GKVorRJWklKbUK0ClazLRJSkFKbUK4jFqSVp8pSStGxGhgrWstPFa1lprEaE5aQVp8CkkVyYlAxWkFaIYUgrTpgoZyUllp/LSStNqDRGYrA3uyaN2cj+x76ASaxysLEdtWAihsZgVkGuh5NzH7jury+O+zYZ/ihtL6jwm1syOz0hmoXE54TlcaHg3I1sSg18rlxSxtxkqZri0+Qt3oSXEVuVqDmpEhmuxs4usoUispqE+IvN6itqb04XDSxxTyFc2rZQzFE+sQoJ1Og9Z5U1t3biYdRcjO3oj/ABHurm286LKvTKwaQHX6zKePjbj51r4XEpTTnyJZclLY75sLbuBlVY8NiYnsLBek+Ut2lWOe/eamSteR8htqPOp7ZW8u0sOM0OImVRyY50t3JJceQr39kZVl7npgrWrVxPZXw0YpLDEQRSjtQtE3j9IE+oVc9kfC3s2WwkaTDt/eISv9UeYAeNqNlFkRdytaK01s3aeHxAzQTRyjtjdWt42OlFlaOodTBytJy0QUpOWjqGUhnLWrU9lpOWmsbUNWrRWnctay0bDY3lrVqctWstGw2NFaQUp+1aK0UzmDlaTkogrSStNqEaGwtIZaIC03INDzopiaSPx0uVdPSY5VHax4U4sZAAJubant76Ah6R51kcBVDOiqCG0Cv1ibAgm3D96lylOpHOAxkrTJRGWtMtHUNp2BSlay0QVpJWm1CaQTEYZXUq4uDy/zwNVPauzJMP11u8XtX73d3+6rqVrRSsvFcLj4iNS59x4vTyKHHMGFxSZFqV2/u+VDTYYagXMepB+4Bz+z5dlVFVxMouLhe24UezU18xn4KeGVS2Xcr4v4B7KO0edZQI2A/N0B8CfbWVDRj/7/AEB4k+xKbX3SeWRpRNcnk68ByUEch4VB4rdfEp/DDjtQg+w2Psrooat5qeHETjsLLDFnI58KyaOjL3MCPfQ2TL6JI7hw8q7E5BFiAR2HWgZN38OxzGFL9wy+YGhrZHjFW6IPA+jOUSYZW4gX9tCSbNXkSK7YuyYMuUxR27Mq291RuL3Qwr8FZD2ox9zXFPHjY9bRz4do4+MC6sGRrEcCCVYeBHCrBsvf3auGsBiHdR9GYCUf1N1vJhVoxe4Z/hTA9zrb8S/tUJi91MWlz0WYdqEN7PS9laYcVGXJok4SXQsWyfhucWGKwgPa0LlT/wAt7/mq47L+FDZc1gZzCx5TKyAfzi6firiGIwVjZ0ynsYEH260I+zhyJHtrQpoCm0epsJiY5VzxSJIv1kYMPMGnSteTosPLE2eF2RvrRsUbzBBqx7M+Eja2H0MxlUfRnUSD+sWf8VOpJ9R1lPRhWtZa5Jsr4bxwxWEI+1C4P4Ht+arpsn4Rdl4jRcSsbfVmBiPhd+qfUaayiyJlmK0krTkTqwDKQwPAggg+BFbIo6h1IZK1oinitJK01jahrLWrU7lrWWjYbG8tay05lrCK6zgDGDrxffI/6UlPFaTjdDEf7we1HH61G74x4o4V/ieYTXUrlKBrX61s+h0vpTagsk8tJKVwDau3sejGKfE4tGvcqzvGfHiDbTwqIl3inY3afFHxnk4dnp8Kn46JSyaeh6VMdIZeHfw7/CvLz4xToVJubnM17sfpG99e+mXlQ26gXvHEeyu/qBfF25HqYpWrVyD4Od9sYJUwjK+LR75OuvSplBJs0hAYWHBmFraHlXZQnqq8MikikGpK0DkVB7W2HmJlhssh9JeCyeP1W+1535WMx0no6GWEMsdM1aG0s5zLiQpKvdGHFWFiD/nmNDWV0XJW68h/Y2PpL9B9+xUhihzFJWbMbLTNaj0vbnXjOHYXUSMQA8afVqjBiTexp9J6XfkFB16y9DLLShJXWGwisFM9JShJRs60Lkw6uLMoYdjAEeRqIxe6mEf+FlPahK+waeyrDgtomMGyqb/WANMGS5qiyOPlYjSfNFKxm4A/hTEdzrf8S291QeM3MxacEEg+wwPsax9ldSDUoVaPF5Fz3JvFFnCsbssppJEyH7SlPeBQEmzRyJHtFehjGDoQCOw6io3F7q4OT0oEB7UGQ/gtetEOO7om8D6M4bgZMVhzmw8skZ7Y3ZL+IBF/XVq2X8LO04LCUpOv96mVvU6W8yDVsxvwcxG5ildO5grj2WPtNQGN+D7FL6HRyDubK3kwA9tao8ZCXX9hHjnEuW63wvYTEN0eJX4q/JmbNEeN7vYZP5tNeNdDhkV1DowZWF1ZSCpB4EEaEV5n2hu1NH85h5F78py/1Lp7aTsXaeLwZJwmJePtXRkPijAr67XrQsqfI5Ta5npzLSStcn2J8L0udFxmHQJqHkhLXH1WEbX0HMAk63HCxv2zN89nz2EeKizHgrno3/pksadTRRTRNZa0RVK2v8Kuz4Jzhz0shVirvGqsikcdSwLWOnVB4GrjgMZFPGs0LrJGwurKbgj9+VuVPYymmDbT0VT/AHsI/qlVf1orLVO+Frbk+DwsUkBUFsQgOZcwsqvIPxRrVU2R8NFrDF4bxeA/+nIdP66NneKk6Ze9/dnxy4DE50RisErIWUHI6xsQyniDccRXmK9ei8Tvts7GYTERx4lMzQyr0cl4nJMbaAPbMfu3rziraCp5NyeWSYq9bB4Ui9bvUkiV7HZfgQwUJWeQxoZUdcsmUZ1V0IKhuIHVPnXVbVyT4CJvlMUnbHC3k0gP5hXX7VrRrwv4RoikkU6RWiKay1jOWspy1ZR1BKBWwK3alKtfK9SLBJ5LNwB9dbScdh9VJxQ63lWlFLpTYdVIfzoSCeI5kU70w+sKHArZSu8P8TtYT0nYaS87Dh7aEePuporbmfM0qx9ga0SYxVKGKqJLt9Y0gXPE3pliZ2ol2x4HPyoLGbfCC9/MU3GtQG3R1apHErFcyZj3pxAXpMsOT7TOpte3Yaltmb2s+jQE96PG494NV3ZWxungi7Mzjysf1q87A3QwwZ1jZmjZCtzdWGYC5uLEHjw7KXSpPSudh1NbskMJtCM6lSe46e6tmRTUNtTDGGZo1Y2XKBf7oNMpiX7aVwktmNqRPUDjdj4eX5yGNz2lRf8Aq4ih0xzcxS5NrhRqtBakG0yGxm4GEf0Q8Z+y1x5PeoLHfBs+vRzK3c6lfaL+6rMd8VEgREzPfQE2F7X5g8qHj32R3KmMhr62ZCO/mD7Kus+SK5+pNwg+hQcZuJiU4wZh2xkN7Br7Kk92t7MZs1BhxGpjzM2SVXVwW42a4sL66g10JNoAi/bTGM2nABaV4wOxytvI1WHHS5NegvgpbplK3935XH4MQfF3jlEiv6SvHYKwNm6rX631a5hKpHEEV1vaGK2M17tFf+5LX8o9D6xVW2lDgjfoGxB7miNvNsv61tx8XfNP0JTg+5RmpF6mJtmMTopXxt+hNITYbc3A9RP7Voc0yVEUKwVOx7CXmxPhYfvRCbJhH0b+JPuvSOSDRaPgNnYY5kHBsO+b+V47W17+/wDbt2Mx8MXzksaffdV95rzrhwI/m+qbW6uht2XHKlZh2UfHSLQnpVHbcXvtgE06cMfsK7+1Rb21D4r4S8OPm4ZX+9lQe8n2VyrP4edHYfZeIf0IZD4RsR52qc+JaGWST5F0b4TJL6YZLd8jH/DW6p3+hcT/AKt/YKyo/wBW+/0G1TOhLFT8UFPxw0XDDWCgsqm1p41mZS6gjLoWAOoB4UmKRTwIPhVJ+Egf+YzeEf8A2lquxp2VVcPauxPEOvrSiKh9y4iMOt+1vzGp4x1DTTHTsGIplxVH3h2xiI8TKiSsqhhYaEDqjtFBx7yYrnJfxVP2q0cMqsnqRfyaSlRG7u0JJkZnsSGAFhblULvRtqeKVo43yqAOAF9e+16Ci3LSFtVZe4kvUbtbA5gRTfwXSPPFK0jM5EtrsSfoIbC/DjVqxuzmPBT5GmcXFg1ENsXbfxWPouh6RbkjKbMCbXOZtCNOAFWTYW/EV+jXDyhmIFroWubAdgquzbPa9sp8j2UmPZ8hZRE3Rte5IHGw0v21Ly7j+bYuu3MEzuZLEEgXBtcWUDW2l9KiUwrXtaqymK2iCF6cHxRO/wCz3VNQy48W1RuHEEcu4imyTUHuLBauRPYbY7tTW0NhOFOlHbi7Snm6QThQUJUBQQOWvWJNS+9GOeGHpI4xIcwBW9uqQbn2CrJRcNXQDvVpOQYHZbHaCKQRd7ea2qLxuCCYloihvmcEngwta1vWfOrJtLetS5boZI3IscraesAi/E1FDaRlktJI5LHq3VRYADTq6Cs03vsPED28jNEBckCxYX4jLr+lVuKGIaiNR4KK6NDglbRlBHYddKIfAxx+hGi+CqP0qkJ6I0CUNTOeQknRVJ8NfdRkezMS3owSH+R/farnHjpRoHYUVHjJTxc+z9qDzPscsS6spibp41v4JHi0Y9ha9FQbhYs+k0S+Lkn8K1fThpMoa51APE8LVRt7No4uFXKTMlgSLBeWvMXoRzZZOlSG0QSt2FxfB2x9LEKPuoW97Cj4/g+gHpSynwCKPaDXKcTt7GyafGpuf8YpfS9rBhfyp7DbHkmAd8S5Oh1zsRcX4ltKtLFlr4p1+QinDpH9Tp67lYcHVrjvY39lqMg3fw8eqxo57GW4/FeqRhN6MRABCWLhAFDEKpIAsCTY399OPvhiDwsPFj2/ZtWaUc/K9i8ZY+x0eHMvoRxp91be61FfGbDranxrlQ3lxBIJZbXF9CdCeGt9a6HBGTCW7D+371GeGXUpGcegWcTH9RfZWVHgVlS8IpqJtI6JjSkqtPoK3pGM4V8IzH/SWI14GMf9GOoPCyEMCTXadr7qYSad5ZIgzsRc5nF7KFHA9gFDruLgf9R+OT/+qr4yqqZNwZG7vYhI8MJXayXGtifSeygAam5IHrqRG1sOfpkfeR11P3lFN7y7Njw+EVYlsomw9l1NrTqeep86isQ6WAVjd5I1IP0ryL1wOXG1u6sc8uiSVc/5KxinGTbpr9Sjb0E/G572+cI4dmg91RqiuzY7cjByu0joxZmLMQ8guSbnQNYUG24WDHBG/wCZJ+9bVlSVENLK9uVBeEntf3U9tHY8LTMXiDtpqzPbgD6KkDnVnwGxY4BkjBC3vYknXxND4yD5U/y/kWsHEZJRdp0XxxTVMP3KwiojhUjQZuEaZQdBqeJJ7zXSokAAFhVJ3bjsreI91XZDpWvhZNwTZLKt9jJI17BxHLvqJ2/GsamcRhioUW0HMgm9jyNSztp6x76G2obxm/d76vlrSycbso+w9rxYjErA2ECE5utmGmVWbgEHYefOiYtpnnCB/X2fepOxwPjq6cGb8klTAjH+fCvO4npRpwPmJ3MlLGU9GI+tyLG+gN+sTUrvLNlgLFS2vAGx4HnY0Hu+LNJ94fkFGbZb5Jq1Y3/Ya+ZNr+4cokggxEyRdHMjOwUNnQgX5n5MaU1DsyE4hYRO+dZGVVKNZsurC/AegfKrDhEtPCf7xfzgUNNhAMfE4H8eUeayj9alkW6Hx9Q/CYCzn1frVf3sxEkeOiiViEZEJXTW7OD38qvTlEa7sqgkAFiALkmwuedRe827azTR4nOwaNQtgBY2Zjr/AFVaUfhsBzLeJ8cMQywZ8lltYKBewv1iO3vqb3Fw+KLS/GSx0TLmkV7elmsFY5eXZUrtTBfK37hUlu9DaRh9n3EfvWNcQ3JY6RZ49tVklvLsl5IsOYnKNa2kvRk8NPSGaqXtfZLvhMSrtnZW45g5AKEWvc21q/b0ZDBDcqWR1e2mYAN6VuNrra/dQs+FBGLS3Madt2cVSXw5FRNO4s4rBgSi3OnWy3zRD6RHId9SGysPeFGFgeiQg255W5/yjQ1PS7PiMRbpSCCpACroQyklswPC1QWxZZBFZOsPQB+T5FlGQFgW9I6nSturWiNUA4wXlc2J1HAaaAai/nWlj7vrdg7+2tRr1n0+ke0khm0F7a6Ea8ffUqkOvA8W5d1r8KEtmFAGQ2OnIfSHZrXZthwZ8PIO0Kw9ag/pXLkw+noN6P1R9bhx7q65ugvyK30zQx6d4Ug1KStoonSKRtnYuaZmyg3y/lFZV/fAgm9ZXKTSoakUHE7Rx8WFh6ENLIQcxCGU+kSCbX5adlWDczFYuSJ2xilXz2UFMnVyjlYc71JthIzZWQGw0vwFtKJhjVRZQAOwULEYy69Y+NLVK2RqacUUiOAtqbMSdMj5gAysCpykMpuCD41GputCCpLzNlZWsZLglGDLcW1FwKsVqRRcVzaBsMslMulFkU04rmECMVRWOi+Vb+X8i1OkVE7QHyp/l/KtY+LdJFMZI7B4N4j3U/vpHjGSIYOYwm5zkKzXFhYdVGtr4UxsY6N4irKX007K18I/7aJ5F8RUdnsY8bPK5YswGW1hmUOimwJ1NyOy1++rVtR/k29X5hSDChykot1NwSBdTYi4PI2NMbYf5Fv5fzCr5H8DFjzRV9ly2xyD+8b/ALclTIn9Luv+lVfZc39vT/en/tt+9SuIx8a580iLq3FlHZ2msHFN7UV4dbsm9hy9aX7w/LRe1Zfk29XvFVPZO9WCjebpMXh11W15U148Ndae2vvbhDC+SbN1b3RJXGhBvdVIA7614It4qruLNpTAIZrSx/eHscGnMYbYte7ED8TW/Wqphd442KsolYZuIiktobHrEAcu2iN5t5xFKcR0L5VlR7NJApNmU2yiQvxHJTYa8q6eOT2SEhJJl821scYjIrNZFfMwtq1uAvy/WiMFsqPD4dYIhZEvYXJ9Jy7anvYmqDsn4UZMTMIYsKLsGN85kNlF/RAF+PaKnZ9tbRbQQZR2mGIjzONDD+mtEoPTTOUlewvasXyg+6PeaI2QtpfFT71NUnae3MYcWIWCj5HOB1VPplePXHqo3Z8+MMgHS5SQeDRnl/w4ry3hccyba5mpTuPIuW82BUQtiNSxCprawUFzYes3opbGSf7Sg/iv+tVPZ0eLxXSQSYlsqrmNwCLjFYqKy5cthliTjen8Tg8VG7N8ZButuDjQAfb7vbW3JiuSdmdOrK1jsOzPI7LaIqzop7V+kw773APC451Xdi4hFWRWKA5yRmheQnLOSesp7NaI3hx2IOIMSydK2RhlXXRldm01NwIjceFUxWYgeja/1RbUeFaYx6WSb3LUzRBiVdDfU5UZFW1tLMewA+upGDEwlgA6k3Q2FiSLXvofM1DbB2cXBF0+ifRYekPssOyicfgnhxcyoVucDLIDZzewa4BZib9XmSO6g4qTqw20rJaGeHTVOD8j2En1a10vcnakBhgQSx5ijIEzjNcObDKdeA7K5lhsGxw8sgdPkmckfKXyhukW6iQKOqRy5czRmHwc6dDllsFnEYs2Isp6YxEgdLZdb8LUjil1HVtHW/jsdyMw0JB8QSCPMVlco2viMTFM8fxkaH60/MZucp7a3Q0ruPb7HS44yNSxPLUAafrSZcZGvpSIv3mUe81yg7Idv/pkjd8+0XPmqGgdo7Eyz4KN8FhIkkxcKnomlkdlzgMrmTTIQxvYcQKCxxvn9P5JuR1KbejAoTmxmHB/30ZPkDQzb97NGnxuNj2IHc/hBrn+7GzJXbE9A2HhVMXMgvhYpJLAggB24KAQAOAtVkfZuKRGZtoYiygm0MeHiJsL2Fl4+ug4wi6b9+gU5PoTo33wrfNpiZPuYXEH/BSf/FbH0Nn7QPe0CxD/AKjiotN2r/OY3HyfexUlvUEsKak3RweuaN5P95NM9/N668Z1SJCfeyYf/Iso7ZcThI7ePXJqH2h8IDojvlwPVBOUY5JHawvlCxobseFr0Qm7WCXhhYPXGrfmBoTefCRJgsRkjRfkn9FVW2h4WHjXJwuq9+oGpUIffvELI8cq4GNkCGzzyLmEkSyLlvHrowB4a+dRmI30xBcM64aLpYo5k6SWQrlYABRkjuW0vaj9nqDPiwQD1MLx/wCDjH6VA7LPy+DP/wCPQeTLSZY42t4+6sMXLuHYffjFhmCyYfJ0sMZZIJ5DeZJmXIjMrNborWtrmFWAbex76CTaB748BhoF88RIT67VUMWP7Wf+N2Yfw4gfrXXF/SrQ0xitK6CtNt2yosdoP/8AcT9/F4KAesQxMR6jSDsXFSaOmh49LtLaEh8kCg+dXM0k0dYNJzDezdwxRAuuH6xlHya4gtm+KYhlu8073AZQbWGoB5VNbO3NRkSTpETMit8nhcIpGZQbZmjY+2pDfuO8UN/9eo/rilj/AMdSe7b5sJhm+th4T5xKaLdxR0VuA4fdwJmticV17ZisqxcL2+ZRLcTSMfu9EY5MzTuSjD5TE4lx6JtcNJb2VPtTMguCO0EUqlQ+lFP3K2LhpMP0kkELuXclmjRj1jnAuQeGajt8cDGmCkyRomUxHqqq2yzRnSw7qF+DCT+yEcbOntw0De8mpTflv7BiPuX8mU08n8f5irylQ2QSu2YL/SWQac7wNb2pXVZ/RNckScLtXCvcWNtR3pMv61cd6tpxSoIY8VlkzAlY3u5XKwsVQ5iNR5UmWapfIfFG2QO8TZdpRN24eQeUgNSWAm+VT/P0TVVm2XKMVhlVJ2MgmC9IrRs1lUnL02XQVaf/AA1ibfKPFALHrPNZ1uLXGRSL/wA1Y80HKUX75s0Q0q1fuiwbsNbESDtEvslR/wD1z50xvrjuhTNz4DS+pBA09YqqYad8LicqYlJfnSZH6R0KSJhrAAODmDQNc5iLEaa6S/8ApFZUBkfC5r8CGUjvuZG/yarkytNUvfoRio202c4OMBkSV9JLqzGPMAxInzNxFvTjGnYaCxAUonRLzXNa5OYqOI1tyGgqy7U2dFLPmjycV0V2EZbpEvmJUlRkL6gHh53HC4hhGFbCYRk0sOlza8tGhFtKDzqKUq/UDhHlFlP3OiYZs6uBZLdRze2a/AceFGbRYSbSw4XNZ8PiIjdXXjDLwzgX4jhVhwsBUuVwiG183RmJ7eFwKHxWHZjDiDhsSFjbOpHxMAZhl1+UBtY87UY8TBu1+xzg6qyD2K6y4SZHKXKxnrcR0mChuVNwRdqKj2mBG6M92WUyDSx+e6S/fowN+XPtovdA4YBo5IDIvxfC58iliJUaeJ8xRtCeiXhe9qmYZ9mR5wmHxEYt18uGxTX0A6zGM9Wyrz1tT5c0U3s2dCLohN4sEJMQ72OuX8iisqVMkLdYNMQQLXw2I4W0/h9laqK4tpeV+hfQv+ibFV3eIXxuzF/2hm/pCmrFVb203/mezB9uY+SCrY/N6/QzS5DW4J6mKPbjZz+SrLiG6pHaD7qqu4LfISHtxEx/EP2qexmKRR12C3va57jw8/bU8t62PDZIksOeqPC3lW34G9RUe2IFUlpVABPO/O/Af58aAxW+mFFwpdz9lD/itU4ch61t6dyXZ6ht7TfB4j/dP+U1XNq79ZbBImXietbrDs04ctb0BtbeLESwSLlUIyNc2N7Ea63sKrGDTTYrXNdi0bLP9oxHemE//VUVXtlv18Gf9it5OtRuExOKaRzncErDfKAugjsnC3IU5s3EHPhbg9XDuotzs4o5OT9/dZyxtV76kjM39qY/7Ts4+Uko/WuvIOHhXEdpYt1xJKRMwzYRiNb5klbKo05nSuzwySlQejy9UEg8RpwtxvSymowjfb9kBQbkx8j/AD/n11oimcRmUZpJUjHaSAPM2qCn3m2eDl+NGZvqwq8x7vmwwHLiaRZXLyxbC4pc2a36YdBFqNMVhvLpQD76e3Vxa/EsKNSRh4RYd0SioHebbcbRKow0kaibDszzNEhVVnjJPRFzIdNPRqL2JvTiUwsEatDEqxqoIiaVyFX0jmkReVrWPrqz1vH0W4lxUjohkc8Iz69KblZk60jRxr2sQB5nSubbQ3gmcENiZzpf5xYxoeGWBEIJ10ufHnUZicbhz10i64AIL9c5ueZ265/qPspPDk+cvQ7xo9EWLc3acECSo0jkF1K9EjuGHRKt7opAHU4kinNt7xRzwywwwSEupUPIyqBm0BKqWbkdCBwqsYGJ2N0jY3JYliWBvfMLGwA1NHYfY87N12yk3a9yTqe3s9dGai56hFklppAy7HdZ45XCyoHRmSSzxlQbFS50I1OmW1dGwe0cY4th0gjj4ApbL6itr2+7VZ2dsSIlTIzNe99ba6W79fGrxseJUjCpoBcWvexvrr43ptevmdEYGysS+s2KbwS49Vxlv6xROH3bgXVszntZreeW1/XR6vrTG0Nrwwj5WRV7r3b1KNT5UdkPuQGLwEXTSqI0+b06oNtOV6KwmyMOyAmJL9wA91QM+90CzmWz5DcXIA7ORNGR76YKNVLM6q3A5Gbl9m9Tu5bB00GTbuwMTePTuZh5a0zNuxBa4zgjXRuzhxp/D724GS2XEJqbDMGS57OuB3Uf8cibhIh/mX96VxCkivx7poL5ZJFv2EW91afd1lUgYh7dhzW05WzVZVF9RrWpF9xpWtg0Upthzhzlm4rY6cRpoeN+XlTOOjxiuM0xOlhwK6A20y2BsTrVufUqe4+0DyoTExX1tcgA+RsQPVUraQNJX4/j1hqh04kAnTvy1lT0cYsLWtWUu3ZBp9wPY+8CzoZBqCxA9IcAOAK6jjUPtDHiTamCAuDH01zpreK+lx3cxUXs3bUOGhEIydW+rMC1yxJuBw49nKhNnY4TY6GRP73kbfNkadunvralJSbV1v8ARlYRg8ctT32r56l+1it3cYDEYc0ynpHN1fKpzPbkOOv+dLQ+OgxTN6Eh4kXBY8eJJ58PKpjdrZePkij6DC5kzFxI7BUbrHtIuL8x2Vc4NxsUQDiMdHHpqsEWY+AZzf8ADTTyaZvl9foRjFOKTv8AL/0qGG2LI1s0klhxF9O8W50ZKmGi9OVF7iyj2catkO5uzl1mfFYjmemlZEH8oyaedExYzZeG+Zgw6t2qgd/6rX9tZ2tXO/SvfoWhkWNVBJFDMMOIy9Hhp8Ta9uiilZdR9YgC3rqR2nsPHfFZicGIIliclpZY1IUKb2RLm9hwNqs+N37b+GjW7TZB+tQ0+18ZP6K37wGf2t1apGDVbcu7b/gSWZu9+fZDGzcBJ8YkbDYcYxBDgy4EyxsCYSTlvo3HUXuNO2gtnYgQDZ8ywLI3QYtWQvGliMSVGZn0FuHbU3g9sYqCwkBPnG3qYaHzqPxO1IUt0OFEbqGUMSRYOSW0HpXJOppqVcvdNEnN9/fMisZtuTETOSixyt8UEYS8oAhxLFnJsAQNSeAtbWrY0E7/AD+NxB7QHjww8oEcka/6wVB4H45lCxhlA5hAv4mpx93J360kmvexY+ujtSETYPtTD4NCSBG7XBJIMzkcCC0zSaWtwtUXjtsHJkRpChIJVj1Qe5R1eQ5chU8N3oQA1y1x3AHQ2tb1VmLwCBSFUDhwAvrcDvpXJddxWmyt4PHYg9WP0b5rcR2m4bTjr20ZiNkStYySADsvfvOgsKKwGDyZSB6XEcxxvUsyfJjtt7bV2vsdGPcrUOyVGUkkgkg8AO61GYLCBeCDy10bTl2cqlY8MSR9Ww15k61kEelvqlxqCB9Igi9KpWdpFQXB9HQEj1E6Ee3yNETA54yOBuLeonn4U8sV+H1/d/7VI4TZryPGii12OrXAHVPOktLYoojGzoOVtOsp9XA0Pit5TCzQxxgkMesx0udeA48e2gN5drYjDYmXCxxhmQi72YjrIp0HAceflUc4Z2LtqTx4fpSyuBTGk2HSbbxEnGQgdi9UezU+s1FY8NcBQSTfgLk8OzxqSw+H1p7G4Ygra+qSewKf3qTl1Zpr4SsbQ2YzRoHJUgm/BiePfQ218NaBMoJsfE21B4VZ1w3yKnsZh+I/vW8PBdR4mjHO01+Avhpo56kuUgnkQezhrVxxq248wD76mJ4UClnAyjjcX0oLbYULGwPVbh33tl99WeTxGqVCxhotWVnZ8kiynL0R1tZmZebDiOH/ALVIz7UxSRFkd1YKeGIeQXQanK1rcOGo7qjp8KC1+jD9oJA1v2GhmhujWgjXVxmJF/paWtfT9K1J3v7+pFqti0Q70YjKvWtoL5lS2mnEDQeVEx7zTAi4Q204HgfA1VNmOOhQknsNyRzpwyhOHC5PG9xfsqDw7tIZSSSbLfFt4gW6NfM1uqf/AKZ+yKyp/wBLI7XA6vFszZ2HNxDhIiOBIV39ov7aA2ttHBPLHIOld41dU6LNGFDiz2tbiLD1C1ag3XPMxr91Sx83NvZUjDu3Fzzv4sQP6VsKKik76nOT5EJh9vGCMQ4eBIoxfKHcki5vwJvWzjcdLwZwP7tMg/qe1WvDbMjT0ERfAC9EdCKoKUpN25nN5WH87M58hYe2j8PuvGPSZj4WUezX21ZbCkE04qRH4fZMSarGoPba7eZ1o1IBelU5EKKOoRPAp6pAI7DqKhsbs+NFbJGq+A/arBKNajsYOXePLnSzVoIMnCklafApBFADRC7RhJiYA2Ouvfe9NR63B+z7zzqUxKC3j+tAxKMua2ptceB0HnUckox8zoaGKU3UVYLJBqNLAKfDiPbWwgEdvG3DjrwozEtakQ4c9GCBz8B4a1klxkF5dzYvs+a89IFxONSJWY3IRRcKLmwvw5VATbakYq0aAJICSx1I0PIG19R28R2VYpcL15BbkfcTULjHCRlr2ysQx0uL2tx4VZZelbmeWJIP3GMrYhUxL3JeyltFPJQqgDjpwFdPhxeHM8caPne7nT0RZGv4+2uU7Bjy4yJ+2RGH/MFXrBYcR4uIjtceatWbLOKzRk1u36BjHVFge+cF8TK1uOU/gUfpVSkYqVsjMGaxK/R7z3Ve95EzSE9qj3VWlTlWuXmsrGPwoa2S4cBgLdaxHgaP2xBYx9/SL5xMf0prBYJEdpFBBbLm1NurexA4A6+vSpPb0RPQWH8cA+DRSj9RStJ3QXdEJDHeA90h9yH9aRh4up/MfcKkYtnNHCyyEFmbNZSeroosT/LTGHXRvEfr+1Z2qaKRVo2uHDDKRoeNR228AEjUAkjMbA/RFhZR3C1TUNC7xpeHTkw9xq+N7izjsUKZsjXPs1PqFNz4Et1iSoJ1FiePPsFbmsHJZrC1h263v4cqGx+0y3A6V6EYvoY5TVDUarGoDBWYG9wNFPYL0LicQWNzTEspNG4bBhevLqfop+r/ALVXluyHPYAMgrKJmKMxJUXJ7qyjsGmei4lFYaysrCuZYS1JasrKYHQbam2rKynfI5GU5HWVlFCjrcaAxPpGsrKnIIwKQ9ZWUwWE7chUYONgouZVubC50biagn5er31lZXjfaP8Alj8j2fsv/G/mHxRKY5SQDZGIuAbGx4UDGxJFyT1jx8aysrH/AK0aP90vkOyfOv4N7qom2FGXHaD0QfWC5FZWV7ODn6fU8XLyX5/QmtkC0+HA0+b/ADrV4b/4uL77e56ysrDxP+WHzGw+V/IVtv0v5P3qtJxrKyvQfNlIcgyOp2Q9U1lZSxCRmN9E+FReG4P4j9aysqeTzoePILhoDepiMM1jbUfrWVlVw+dCZfKzmGJNCPWVleqeWgzYQvJryViPHtpOMY2rKyl+8H7oIKysrKc4/9k=', // Ganti dengan URL gambar yang diinginkan
                                  height: 75,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // Informasi
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nama Kampus*',
                                      style: TextStyle(
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
