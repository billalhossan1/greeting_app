import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Greeting App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            children: [
              Text("Hello,World!",style:TextStyle(
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 15,),
              Text("Welcome to Flutter!",style: TextStyle(
                fontSize: 20,
              ),
              ),
              SizedBox(height: 15,),
              Image.asset("images/download.png"),
              SizedBox(height: 15,),
              ElevatedButton(style:ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
                  onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Button Pressed")
                    )
                    );
                  }, child: Text("Press Me"))
            ],
          ),
        ),
      ),
    );
  }
}
