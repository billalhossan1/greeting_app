import 'package:flutter/material.dart';

class Tablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Basics'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Home', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {},
            child: Text('About', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Contact', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: [
            Container(
              child: Text(
                "FLUTTER WEB",
                style: TextStyle(
                    fontSize: 40, fontFamily: 'ArchivoBlack', height: 1),
              ),
            ),
            Container(
              child: Text(
                "THE BASICS",
                style: TextStyle(
                    fontSize: 40, fontFamily: 'ArchivoBlack', height: 1),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50),
              child: Container(
                child: Text(
                  'Billal Hossan, 22 years old, is currently studying to become a Flutter developer on '
                      'the Ostad platform. He is passionate about mobile app development and enjoys solving '
                      'complex problems through coding. Billal is dedicated to continuously learning and improving '
                      'his skills, with a strong focus on creating user-friendly and efficient applications. In his free '
                      'time, he likes exploring new technologies, contributing to open-source projects, and participating '
                      'in coding challenges.',
                  style: TextStyle(
                    fontSize: 21,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 100),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent.shade400,
                    minimumSize: Size(250, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: Text("Follow")),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}