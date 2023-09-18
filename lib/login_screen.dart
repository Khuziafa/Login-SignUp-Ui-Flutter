// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
//
// class homeScreen extends StatefulWidget {
//   const homeScreen({super.key});
//
//   @override
//   State<homeScreen> createState() => _homeScreenState();
// }
//
// class _homeScreenState extends State<homeScreen> {
//
//   final nameController = TextEditingController();
//   final key = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Form(
//         key: key,
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.all(15),
//             child: Column(mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Image.asset("assets/login.png"),
//                   Text("Login",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.blue),),
//                   SizedBox(height: 5),
//                   Text("Login screen you account login and to home screen free login my app tank you?",style: TextStyle(),),
//                   SizedBox(height: 30,),
//
//               TextFormField(controller: nameController ,
//
//                 validator: (value) {
//                   if(value == null || value.isEmpty){
//                     return "Name Field Empty";
//                   }return null;
//                 },
//                 decoration: InputDecoration(labelText: "Enter Name",hintText: "Enter Name",
//                   suffixIcon: Icon(Icons.alternate_email),
//                   prefixIcon: Icon(Icons.email_outlined),
//                   focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(width: 2, color: Colors.blue,),),
//                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(width: 2, color: Colors.blue),),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.blue))),),
//               SizedBox(height: 20,),
//               CupertinoButton(
//                 padding: EdgeInsets.zero,
//                 onPressed: () {
//                   if(key.currentState!.validate()){
//
//                       // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("3456789")));
//
//                   }
//                 },
//                 child: Container(height: 55,width: double.infinity,
//                 child: Center(child: Text("Next",style: TextStyle(color: Colors.white),),),
//                 decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10)),),
//               ),
//
//
//             ]),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// /// Form key
// /// TextField
// /// Button
// /// snack-bar

import 'package:ecommerce_app/forget_screen.dart';
import 'package:ecommerce_app/signUp_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class loginScreen extends StatefulWidget {
  loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final keys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/pro.png"),fit: BoxFit.cover)
      ),
      child: Scaffold(backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 230,
                    width: double.infinity,
                    child: Container(child: Image.asset("assets/logo.png"))),

                Text("Login",style: TextStyle(
                    fontSize: 28,fontWeight: FontWeight.bold,
                    color: Colors.white),),
                SizedBox(height: 20,),
                Container(
                  height: 45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white.withOpacity(0.2)),
                  child: Center(

                    child: TextFormField(
                      style: TextStyle(color: Colors.white.withOpacity(0.6)),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person,color: Colors.white,),
                        contentPadding: EdgeInsets.symmetric(vertical: 13),
                        hintText: "Enter your name",
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                        isDense: true, // and add this line
                        border: InputBorder.none,
                      ),),
                  ),
                ),

                SizedBox(height: 20,),


                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white.withOpacity(0.2)),
                  child: TextFormField(obscureText: true,
                    style: TextStyle(color: Colors.white.withOpacity(0.6)),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_open_outlined,color: Colors.white,),
                      contentPadding: EdgeInsets.symmetric(vertical: 13),
                      hintText: "Enter your Password",
                      suffixIcon: Icon(Icons.visibility_off,color: Colors.white,),
                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                      isDense: true, // and add this line
                      border: InputBorder.none,
                    ),),
                ),

                SizedBox(height: 10,),

                InkWell(
                  onTap: () {
                    Get.to(forget());
                  },
                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 13),),
                    ],
                  ),
                ),

                SizedBox(height: 30,),

                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Get.to(signup_screen());
                  },
                  child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white),
                      child: Center(child: Text("Login",style: TextStyle(color: Color.fromRGBO(9, 7, 117,9),fontWeight: FontWeight.bold,
                          fontSize: 20),),)
                  ),
                ),

                SizedBox(height: 30,),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?  ",style: TextStyle(color: Colors.white.withOpacity(0.6),fontSize: 15),),
                    InkWell(onTap: () {
                      Get.to(signup_screen());
                    },
                        child: Text("Sign up",style: TextStyle(color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.bold,fontSize: 18),)),
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

                    ),SizedBox(width: 15,),

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
