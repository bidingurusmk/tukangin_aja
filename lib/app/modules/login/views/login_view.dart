import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ListView(
          children: [
            Container(
              // width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 143, 252, 141),
              padding: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tukangin Yuuks',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image(
                    image: AssetImage(
                      "assets/Robotics.png",
                    ),
                    width: MediaQuery.of(context).size.width / 1.2,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Username",
                    ),
                  ),
                  Stack(
                    children: [
                      TextFormField(),
                      Positioned(
                        right: 10,
                        top: 20,
                        child: Image(
                          image: AssetImage("assets/user.png"),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Password",
                    ),
                  ),
                  Stack(
                    children: [
                      Obx(
                        () => TextField(
                          obscureText: controller.obsecuretext.value,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: (controller.obsecuretext != false)
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                              onPressed: () => {
                                controller.obsecuretext.value =
                                    !(controller.obsecuretext.value)
                              },
                              padding: EdgeInsets.only(right: 30),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 20,
                        child: Image(
                          image: AssetImage("assets/password.png"),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Text(
                        "Login",
                      ),
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 40),
                          backgroundColor:
                              const Color.fromARGB(255, 0, 130, 4)),
                    ),
                  ),
                  Stack(children: [
                    Positioned(
                      child: ElevatedButton(
                        onPressed: () => {},
                        child: Text(
                          "Login With Googles",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 40),
                            backgroundColor:
                                Color.fromARGB(255, 210, 210, 210)),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 10,
                      child: Image(
                        image: AssetImage("assets/google.png"),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text("Belum punya akun? Daftar"),
                  ),
                  Positioned(
                    top: 10,
                    right: 100,
                    child: Image(
                      image: AssetImage("assets/Vector1.png"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
