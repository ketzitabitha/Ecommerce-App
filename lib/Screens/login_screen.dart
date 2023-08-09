import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kavin_mart/Screens/home_screen.dart';
import 'package:kavin_mart/Screens/navigation_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          color: Color(0xffA4D0A4),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: size.height / 3.6,
                  width: size.width,
                  // color: Colors.amber,
                  child: Center(
                    child: Text(
                      "KAVIN",
                      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: size.height / 1.51,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: size.height*0.02,),
                      Text(
                      "Login",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                      SizedBox(height: size.height*0.05,),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            // hintText: "Enter Email",
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                               ),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height*0.01,),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            // hintText: "Enter Email",
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                               ),
                          ),
                        ),
                      ),
                       SizedBox(height: size.height*0.04,),
                      InkWell(
                        onTap: () {
                          Get.to(GNavi());
                        },
                        child: Container(
                          height: size.height*0.06,
                          width: size.width*0.5,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            color: Color(0xffA4D0A4),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                          child: Center(child: Text("Login")),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
