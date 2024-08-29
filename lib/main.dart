import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _Screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (_Screenwidth > 1000) {
            return Desktop();
          } else if (_Screenwidth > 600) {
            return Tablet();
          } else {
            return Mobile();
          }
        },
      ),
    );
  }
}

class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:200,
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
                    padding: const EdgeInsets.only(left: 100.0,top: 100),
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        'FLUTTER WEB\nTHE BASICS',
                        style: TextStyle(fontSize: 65, fontFamily: 'ArchivoBlack',
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
                            style: TextStyle(fontSize: 21, ),
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
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                      onPressed: () {}, child: Text("Follow")
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
              child:
                  Text("FLUTTER WEB",style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'ArchivoBlack',
                    height: 1
                  ),),),
                  Container(
                    child: Text("THE BASICS",style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'ArchivoBlack',
                        height: 1
                    ),),
                  ),

                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0,right: 50),
                    child: Container(
                      child: Text(
                        'Billal Hossan, 22 years old, is currently studying to become a Flutter developer on '
                            'the Ostad platform. He is passionate about mobile app development and enjoys solving '
                            'complex problems through coding. Billal is dedicated to continuously learning and improving '
                            'his skills, with a strong focus on creating user-friendly and efficient applications. In his free '
                            'time, he likes exploring new technologies, contributing to open-source projects, and participating '
                            'in coding challenges.',
                        style: TextStyle(fontSize: 21,),textAlign: TextAlign.center,
                      ),
                    ),
                  ),
            SizedBox(height: 40),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent.shade400,
                    minimumSize: Size(250, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
                onPressed: () {}, child: Text("Follow")
            ),
            SizedBox(height: 40),

          ],
        ),
      ),
    );
  }
}

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Basics'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
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
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Billal Hossan, 22 years old, is currently studying to become a Flutter developer on '
                  'the Ostad platform. He is passionate about mobile app development and enjoys solving '
                  'complex problems through coding. Billal is dedicated to continuously learning and improving '
                  'his skills, with a strong focus on creating user-friendly and efficient applications. In his free '
                  'time, he likes exploring new technologies, contributing to open-source projects, and participating '
                  'in coding challenges.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Follow'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}