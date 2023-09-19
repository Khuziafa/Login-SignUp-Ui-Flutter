import 'package:ecommerce_app/signUp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class verfifaction_screen extends StatefulWidget {
  const verfifaction_screen({super.key});

  @override
  State<verfifaction_screen> createState() => _verfifaction_screenState();
}

class _verfifaction_screenState extends State<verfifaction_screen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/pro.png"),
          fit: BoxFit.cover)),

      child: Scaffold(backgroundColor: Colors.transparent,
        body: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image.asset("assets/logo.png")),
              
              SizedBox(height: 15,),

            Center(child: Text("Verification",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.w700),)),

              SizedBox(height: 15,),

              Text("We have sent you an access code via SMS for Mobile number Verification",
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),textAlign: TextAlign.center,),



              SizedBox(height: 100,),


//// ext text remove

              Text("Login",style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.white),),
              Text("Login",style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.white),),
              Text("Login",style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.white),),
              Text("Login",style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.white),),
              Text("Login",style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.white),),


              CupertinoButton(padding: EdgeInsets.zero,
                onPressed: () {
                  Get.to(signup_screen());
                },
                child: Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(shape: BoxShape.circle,
                  color: Colors.white),
                  child: Icon(Icons.arrow_forward_rounded,
                      color: Color.fromRGBO(11, 17, 120, 9),size: 35),
                ),
              ),
              SizedBox(height: 40,),

              Text("Resend Code",
              style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),),

              SizedBox(height: 15,),
          ],
          ),
        ),
      ),
    );
  }
}
