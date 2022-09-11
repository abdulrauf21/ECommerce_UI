import 'package:flutter/material.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/PicsForUI/icon_home.png"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/PicsForUI/icon_wallet.png"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/PicsForUI/icon_cart.png"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/PicsForUI/icon_user.png"),
            label: "",
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 30.0,
              ),
            ),
            Text(
              "Popular",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Icon(
              Icons.menu,
              color: Colors.black,
              size: 30.0,
            ),
          ],
        ),
      ),
      
      body: (Text("Hello World")),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //       backgroundColor: Colors.white,
      //     )
        // ],
     
    );
  }
}
