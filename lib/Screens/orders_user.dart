import 'package:flutter/material.dart';

class OrdersUser extends StatelessWidget {
  const OrdersUser({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffA4D0A4),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: Text(
            "Kavin",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Center(
                child: Text(
                  "Thanks For",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
              Center(
                child: Text(
                  "Shopping",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
              SizedBox(
                height: size.height*0.02,
              ),
              Column(
                children: [
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      color: Colors.grey.shade200.withOpacity(0.5),
                      padding: EdgeInsets.all(20),
                      width: size.width,
                      child: Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Product Name"),
                              Text("Kgs"),
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
