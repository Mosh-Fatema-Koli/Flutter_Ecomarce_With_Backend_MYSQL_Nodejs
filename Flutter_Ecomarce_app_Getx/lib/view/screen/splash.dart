
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_ecomarce_app_getx/auth/login.dart';
import 'package:flutter_ecomarce_app_getx/view/home/home.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      checkAccessToken();
    }
    );

    super.initState();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container()),
            Column(
             children: [
               ClipRRect(
                 borderRadius:  BorderRadius.all(Radius.circular(100)),
                 child: Image(
                     height: 100,
                     width: 100,
                     image:
                     AssetImage("images/logo.jpg")),
               ),
               SizedBox(height: 10,),
               Text("Shopping Hub")
             ],

              ),
            Expanded(child: Container()),
            Column(
              children: [
                const Text(
                  "Build Version",
                  style: TextStyle(color: Colors.black54),
                ),
                const Text(
                  "v1.11.1",
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 4,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(4)),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void checkAccessToken() async {
    var token = await GetStorage().read("token");
    print(token);
    if (token != null) {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()),);
    } else {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()),);
    }
  }
}


