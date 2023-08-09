import 'package:flutter/material.dart';
import 'package:kavin_mart/Widgets/appbarWid.dart';
import 'package:kavin_mart/Widgets/productContainerWid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        body: Stack(
          children: [
            Container(
              color: Colors.grey.shade200.withOpacity(0.1),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("HI! "),
                            Text(
                              "UserName",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                        Divider(),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        ProductContainerW(
                          pimage: Image.asset(
                            "assets/tomato.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        ProductContainerW(
                          pimage: Image.asset(
                            "assets/tomato.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        ProductContainerW(
                          pimage: Image.asset(
                            "assets/tomato.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        ProductContainerW(
                          pimage: Image.asset(
                            "assets/tomato.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        ProductContainerW(
                          pimage: Image.asset(
                            "assets/tomato.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        ProductContainerW(
                          pimage: Image.asset(
                            "assets/tomato.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        ProductContainerW(
                          pimage: Image.asset(
                            "assets/tomato.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        ProductContainerW(
                          pimage: Image.asset(
                            "assets/tomato.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        ProductContainerW(
                          pimage: Image.asset(
                            "assets/tomato.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        ProductContainerW(
                          pimage: Image.asset(
                            "assets/tomato.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.4,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: MaterialButton(
                elevation: 10,
                onPressed: () {
                  showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  // title: const Text("Alert Dialog Box"),
                  content: const Text("Thanks for shopping with us"),
                  // actions: <Widget>[
                  //   TextButton(
                  //     onPressed: () {
                  //       Navigator.of(ctx).pop();
                  //     },
                  //     child: Container(
                  //       color: Colors.green,
                  //       padding: const EdgeInsets.all(14),
                  //       child: const Text("okay"),
                  //     ),
                  //   ),
                  // ],
                ),
              );
                },
                color: Color.fromARGB(255, 255, 255, 255),
                textColor: Color.fromARGB(255, 0, 0, 0),
                child: Text("Order",style: TextStyle(fontWeight: FontWeight.bold),),
                padding: EdgeInsets.all(30),
                shape: CircleBorder(),
              ),
              top: size.height*0.7,
              left: size.width/2.5,
            )
          ],
        ),
      ),
    );
  }
}
