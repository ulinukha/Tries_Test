import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tries/app/base/resource/_index.dart';
import 'package:tries/app/ui/modules/login/controllers/controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
              body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SvgPicture.asset(Images.IC_Login,
                        width: MediaQuery.of(context).size.width / 1.2),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                      child: Text(
                    "Login Now",
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0),
                  )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Please enter the details below to continue",
                    style: GoogleFonts.montserrat(
                        color: Colors.grey, fontSize: 14.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    controller: controller.usernameController,
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Username",
                        fillColor: Colors.white70),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    controller: controller.passwordController,
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Password",
                        fillColor: Colors.white70),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.onLogin();
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          color: Colors.red[700],
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Text(
                        "Login".toUpperCase(),
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
        ));
  }
}
