import 'package:ecommerce_app/login_screen.dart';
import 'package:ecommerce_app/profile_screen.dart';
import 'package:ecommerce_app/verification_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signup_screen extends StatefulWidget {
  const signup_screen({super.key});

  @override
  State<signup_screen> createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/pro.png"),fit: BoxFit.cover)
      ),

      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset("assets/logo.png")),
                Text("Sign Up",style: TextStyle(
                    fontSize: 28,fontWeight: FontWeight.bold,
                    color: Colors.white),),

                SizedBox(height: 30,),

                Container(
                    height: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                        color: Colors.white.withOpacity(0.2)),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none,
                          hintText: "Username",
                          prefixIcon: Icon(Icons.person,color: Colors.white.withOpacity(0.6)),
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                          hintStyle: TextStyle(color: Colors.white.withOpacity(0.6))),
                      style: TextStyle(color: Colors.white.withOpacity(0.6),
                      ),
                    )),
                SizedBox(height: 15,),
                Container(
                    height: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                        color: Colors.white.withOpacity(0.2)),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none,
                          hintText: "Email",isDense: true,
                          prefixIcon: Icon(Icons.email,color: Colors.white.withOpacity(0.6)),
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                          hintStyle: TextStyle(color: Colors.white.withOpacity(0.6))),
                      style: TextStyle(color: Colors.white.withOpacity(0.6),
                      ),
                    )),
                SizedBox(height: 15,),
                Container(
                    height: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                        color: Colors.white.withOpacity(0.2)),
                    child: TextFormField(       obscureText: true,
                      decoration: InputDecoration(border: InputBorder.none,
                          hintText: "Password",isDense: true,
                          prefixIcon: Icon(Icons.lock_outline_rounded,color: Colors.white.withOpacity(0.6)),
                          suffixIcon: Icon(Icons.visibility_off,color: Colors.white.withOpacity(0.8)),
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                          hintStyle: TextStyle(color: Colors.white.withOpacity(0.6))),
                      style: TextStyle(color: Colors.white.withOpacity(0.6),
                      ),
                    )),
                SizedBox(height: 15,),
                Container(
                    height: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                        color: Colors.white.withOpacity(0.2)),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none,
                          hintText: "Confirm Password",
                          isDense: true,
                          prefixIcon: Icon(Icons.lock_outline_rounded,color: Colors.white.withOpacity(0.6)),
                          suffixIcon: Icon(Icons.visibility_off,color: Colors.white.withOpacity(0.8)),
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                          hintStyle: TextStyle(color: Colors.white.withOpacity(0.6))),
                      style: TextStyle(color: Colors.white.withOpacity(0.6),
                      ),
                    )),
                SizedBox(height: 30,),
                CupertinoButton(padding: EdgeInsets.zero,
                  onPressed: () {
                    Get.to(verfifaction_screen());

                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)
                        ,color: Colors.white),
                    child: Center(
                      child: Text("Sign Up",style: TextStyle(color: Color.fromRGBO(19, 19, 159, 9),
                          fontSize: 20,fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already Have Account?",style: TextStyle(color: Colors.white.withOpacity(0.6),fontSize: 15),),
                    InkWell(onTap: () {
                      Get.to(profileScreen());
                    },
                        child: Text(" Sign In",style: TextStyle(color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.bold,fontSize: 18),)),
                  ],
                ),
                SizedBox(height: 30,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Center(child: Image.asset("assets/google.png",height: 35,width: 30)),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),

                    ),

                    SizedBox(width: 15,),

                    Container(
                      child: Center(child: Image.asset("assets/facebook.png",height: 35,width: 30)),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),),

                    SizedBox(width: 15,),

                    Container(
                      child: Center(child: Image.asset("assets/apple.png",height: 35,width: 30)),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),),
                  ],
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
