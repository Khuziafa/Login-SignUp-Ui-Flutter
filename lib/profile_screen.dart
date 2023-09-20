import 'package:flutter/material.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    var heigh = MediaQuery.of(context).size.height;
    return  Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Profile",style: TextStyle(color: Colors.black),),elevation: 0.2,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(height: 5,),
              SizedBox(
                height: 120,
                width: 120,
                child: Stack(alignment: Alignment.center,
                  fit: StackFit.expand,
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(radius: 70,
                      backgroundImage: AssetImage("assets/newmk.jpg"),),
                    Positioned(
                       right: -25,
                        left: 85,
                        bottom: 0,
                        child: CircleAvatar(radius: 20,
                          child: Icon(Icons.camera_alt),))
                  ],
                ),
              ),
              SizedBox(height: 15,),

              Text("Muhammad Khuzaifa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 5,),

              Text("Brothercode@gmail.com",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),

              myrow("Edit Profile", Icons.edit, Colors.green),
              SizedBox(height: 15,),

              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("General Setting",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              SizedBox(height: 15,),
              myrow("Mode", Icons.dark_mode, Colors.black87),
              myrow("Language", Icons.language, Colors.orange),
              myrow("About", Icons.assistant_direction_rounded, Colors.grey),
              myrow("Terms & Conditions", Icons.warning, Colors.blue),
              myrow("Privacy Policy", Icons.lock, Colors.red),
              myrow("Rate This App", Icons.star, Colors.deepPurple),
              myrow("Share This App", Icons.share, Colors.pink),

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

            ],
          ),
        ),
      ),
    );
  }
  Widget myrow(String? title,IconData? icon,Color? Color,){
    return ListTile(contentPadding: EdgeInsets.zero,

      leading: CircleAvatar(child: Icon(icon,color: Colors.white,),
      backgroundColor: Color,),
      title: Text(title.toString()),
      trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),
    );
  }
}
////////////////
///////////////
//////////////
//// Muhammad Khuzaifa