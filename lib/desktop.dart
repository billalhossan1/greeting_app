import 'package:flutter/material.dart';

class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text('Flutter Basics'),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Home', style: TextStyle(color: Colors.black)),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('About', style: TextStyle(color: Colors.black)),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Contact', style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0, top: 100),
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        'FLUTTER WEB\nTHE BASICS',
                        style: TextStyle(
                            fontSize: 65,
                            fontFamily: 'ArchivoBlack',
                            height: 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0),
                    child: Container(
                      width: double.infinity,
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
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent.shade400,
                            minimumSize: Size(250, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: Text("Follow"))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}