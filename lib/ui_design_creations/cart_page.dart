import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  int selectedSize = 0;
  final List sizes = [39, 40, 41, 42, 43, 44, 45];
    final List colors = [
      "0xff000000",
      "0xffB4B3B3",
      "0xffFFFFFF",
      "0xffEB0909",
    ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "Adidas Yung-1",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 433,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child:
                                Image.asset("assets/PicsForUI/adidas_logo.png"),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              "assets/PicsForUI/shoe_red.png",
                              width: MediaQuery.of(context).size.width - 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Size",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              for (int i = 0; i < sizes.length; i++)
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedSize = i;
                                    });
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      bottom: 8,
                                    ),
                                    alignment: Alignment.center,
                                    height: 38,
                                    width: 38,
                                    decoration: BoxDecoration(
                                      color: selectedSize == i ? Colors.black: Color(0xffEFEFEF),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      sizes[i].toString(),
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: selectedSize == i ? Colors.white : Colors.black
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$128.99",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 92,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Color(0xff72d48e),
                              border: Border.all(color: Colors.green)),
                          child: Text("In Stock"),
                        )
                      ],
                    ),
                    Text(
                        "Sneaker made from premium leather and suede Waterproof inner liner to keep moisture out..."),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        for (String color in colors)
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                              color: Color(int.parse(color)),
                              shape: BoxShape.circle,
                            ),
                          ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff363636)),
                  minimumSize:
                      MaterialStateProperty.all(Size(double.infinity, 66))),
              child: Text("Add to Cart"),
            )
          ],
        ),
      ),
    );
  }
}
