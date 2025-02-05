import 'package:flutter/material.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
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
                    '#SatSet_anti_ribet',
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
            Container(
              color: Colors.green,
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(4, (index) {
                        return Container(
                          width: 150,
                          height: 100,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
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