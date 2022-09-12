import 'package:flutter/material.dart';
import 'package:testapp/utils/app_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
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
                Icons.more_vert,
                color: Colors.black,
                size: 30.0,
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        Expanded(
          child: GridView.builder(
              itemCount: products.length,
              padding: const EdgeInsets.symmetric(horizontal: 18),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                // width/height
                childAspectRatio:
                    ((MediaQuery.of(context).size.width - 56) / 2) / 216,
                crossAxisCount: 2,
                crossAxisSpacing: 18,
                mainAxisSpacing: 28,
              ),
              itemBuilder: (context, index) {
                return Container(
                  // color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        width: double.infinity,
                        height: 156,
                        decoration: BoxDecoration(
                          color: Color(0xFFEFEFEF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.favorite)),
                            Image.asset(
                              products[index]["image"]!,
                              height: 116,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(products[index]["name"]!),
                      Text(products[index]["price"]!),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
