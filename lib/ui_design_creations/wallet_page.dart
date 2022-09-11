import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(18, 66, 18, 25),
              height: 161,
              width: double.infinity,
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                color: Color.fromARGB(255, 58, 58, 58),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 30),
                    child: Container(
                      width: 123,
                      child: Column(
                        children: [
                          Text(
                            "Just do it with NIKE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 143, 142, 142)),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Text(
                                "Explore Now  ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 15.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/PicsForUI/shoe_yellow.png",
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "See more",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 114, 113, 113),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 143,
              width: double.infinity,
              child: ListView.separated(
                  padding: const EdgeInsets.only(left: 18),
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEFEFEF),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25, left: 30),
                            child: Container(
                              width: 123,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Nike",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "Free Metcon",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    "\$ 120.99",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Image.asset(
                            "assets/PicsForUI/shoe_yellow.png",
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Newest shoes",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "See more",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 114, 113, 113),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 18),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  childAspectRatio: (MediaQuery.of(context).size.width /2)/216,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 156,
                      color: Colors.grey
                    )
                  ],
                );
              }
            )
          ],
        ),
      ),
    );
  }
}
