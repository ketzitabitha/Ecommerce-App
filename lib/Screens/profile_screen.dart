import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kavin_mart/Screens/login_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
              SizedBox(
                height: size.height / 20,
              ),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     shape: BoxShape.circle,
              //     boxShadow: [
              //       BoxShadow(
              //           blurRadius: 7,
              //           color: Color.fromARGB(255, 44, 44, 44),
              //           spreadRadius: 2)
              //     ],
              //   ),
              //   child: CircleAvatar(
              //     radius: 60,
              //     backgroundColor: Color(0xFFD9D9D9),
              //     child: Text(
              //       "Farmer's\n       Friend",
              //       style: TextStyle(fontSize: 20, color: Colors.black),
              //     ),
              //   ),
              // ),
              Material(
                borderRadius: BorderRadius.circular(60),
                elevation: 15,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Color(0xFFD9D9D9),
                  backgroundImage: AssetImage("assets/buyer.jpg"),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.07,
                  ),
                  SvgPicture.asset(
                    "assets/name.svg",
                    height: size.height * 0.07,
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Text(
                    "Shop Name",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.09,
                  ),
                  SvgPicture.asset(
                    "assets/mail.svg",
                    height: size.height * 0.05,
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Text(
                    "Mail",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.09,
                  ),
                  SvgPicture.asset(
                    "assets/call.svg",
                    height: size.height * 0.06,
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Text(
                    "Call",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.09,
                  ),
                  SvgPicture.asset(
                    "assets/location.svg",
                    height: size.height * 0.06,
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Text(
                    "Location",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              InkWell(
                onTap: () {
                  Get.to(LoginPage());
                },
                child: Container(
                  height: size.height * 0.07,
                  width: size.width,
                  color: Colors.grey.shade200.withOpacity(0.5),
                  child: Center(
                    child: Text("LogOut",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
