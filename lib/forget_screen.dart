import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'login_screen.dart';


class forget extends StatefulWidget {
  const forget({super.key});

  @override
  State<forget> createState() => _forgetState();
}

class _forgetState extends State<forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/pro.png"),fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              SizedBox(height: 300,
                  width: double.infinity,
                  child: Image.asset("assets/logo.png")),
              SizedBox(height: 20,),
              Text("Forgot Password?",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 50,),
              Container(
                  height: 45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                      color: Colors.white.withOpacity(0.2)),
                  child: TextFormField(
                    decoration: InputDecoration(border: InputBorder.none,
                        hintText: "Email",
                        prefixIcon: Icon(Icons.lock_outline_rounded,color: Colors.white.withOpacity(0.6)),
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.6))),
                    style: TextStyle(color: Colors.white.withOpacity(0.6),
                    ),
                  )),
              SizedBox(height: 30,),
              CupertinoButton(padding:  EdgeInsets
                .zero,
                onPressed: () {

                  Get.to(loginScreen());
                },

                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)
                      ,color: Colors.white),
                  child: Center(
                    child: Text("Submit",style: TextStyle(color: Color.fromRGBO(19, 19, 159, 9),
                        fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
