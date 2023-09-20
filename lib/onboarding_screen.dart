import 'package:flutter/material.dart';

class onboardingscreen extends StatefulWidget {
  const onboardingscreen({super.key});

  @override
  State<onboardingscreen> createState() => _onboardingscreenState();
}

class _onboardingscreenState extends State<onboardingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
      padding: EdgeInsets.only(bottom: 100),
        


        child: PageView(
          children: [
            Container(
              color: Colors.pink,
              child: const Center(child: Text("page 1")),
            ),
            Container(
              color: Colors.yellowAccent,
              child: const Center(child: Text("page 2")),
            ),
            Container(
              color: Colors.deepPurple,
              child: const Center(child: Text("page 3")),
            )
          ],
        ),
      ),
    );
  }
}
////////////////
///////////////
//////////////
//// Muhammad Khuzaifa