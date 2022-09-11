import 'package:flutter/material.dart';
import 'package:testapp/ui_design_creations/cart_page.dart';
import 'package:testapp/ui_design_creations/homepage.dart';
import 'package:testapp/ui_design_creations/user_page.dart';
import 'package:testapp/ui_design_creations/wallet_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentPage = 0;
  late List pages;

  @override
  void initState() {
    super.initState();
    pages = [
      HomePage(),
      WalletPage(),
      CartPage(),
      UserPage(),

    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        // selectedItemColor: Colors.black,
        // unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
          currentPage = index;
                      
                    });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/PicsForUI/icon_home.png", color: currentPage == 0? Colors.black: Colors.grey,),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/PicsForUI/icon_wallet.png", color: currentPage == 1? Colors.black: Colors.grey,),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/PicsForUI/icon_cart.png", color: currentPage == 2? Colors.black: Colors.grey,),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/PicsForUI/icon_user.png", color: currentPage == 3? Colors.black: Colors.grey,),
            label: "",
          ),
        ],
      ),
      body: pages[currentPage],
     
    );
  }
}
