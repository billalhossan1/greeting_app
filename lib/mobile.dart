import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              'Flutter Basics',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 300,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.greenAccent.shade400,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'SKILL UP NOW',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'ArchivoBlack'),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Tap Here',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 21,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 21,
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 21,
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text('Contact'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'FLUTTER WEB\nTHE BASICS',
              style: TextStyle(
                  fontSize: 40, fontFamily: 'ArchivoBlack', height: 1),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                'Billal Hossan, 22 years old, is currently studying to become a Flutter developer on '
                    'the Ostad platform. He is passionate about mobile app development and enjoys solving '
                    'complex problems through coding. Billal is dedicated to continuously learning and improving '
                    'his skills, with a strong focus on creating user-friendly and efficient applications. In his free '
                    'time, he likes exploring new technologies, contributing to open-source projects, and participating '
                    'in coding challenges.',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
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
          ],
        ),
      ),
    );
  }
}