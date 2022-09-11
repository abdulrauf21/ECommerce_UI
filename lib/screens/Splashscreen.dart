import 'package:flutter/material.dart';
import 'package:testapp/screens/GameScreen.dart';


class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("START GAME  "),
              Icon(Icons.play_arrow, size: 30,),
            ],
          ),
          // child: Text("Let's Begin"),
          onPressed: () {
             Navigator.of(context).push(
              MaterialPageRoute(builder: (context)   => GameScreen())
                );
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20.0),
            fixedSize: Size(300, 80),
            textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            primary: Colors.yellow,
            onPrimary: Colors.black,
            elevation: 15,
            shadowColor: Colors.yellow,
            side: BorderSide(color: Colors.black, width: 2),
            // alignment: Alignment.centerLeft,
            shape: StadiumBorder()
          ),
        ),
      ),
    );
  }
}
