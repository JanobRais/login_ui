import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/login_page.dart';
import 'package:login_ui/sign_up.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: size.width * 0.3,
                )),
            Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: size.width * 0.2,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("WELCOME TO MY APP", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                SizedBox(height: size.height*0.03,),
                SvgPicture.asset(
                  "assets/icons/chat.svg",
                  height: size.height * 0.45,
                ),
                SizedBox(height: size.height*0.03,),
                Container(
                  height: 50,

                  width: size.width * 0.8,
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),

                      

                      primary: Color(0xFF6F35A5), // background
                      onPrimary: Colors.white,),
                       onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){return LoginPage();}),);},
                       child: Text("LOGIN"),
                     ),
                ),
                SizedBox(height: size.height*0.03,),
                Container(
                  height: 50,

                  width: size.width * 0.8,
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),



                      primary: Color(0xFFF1E6FF), // background
                      onPrimary: Colors.black,),
                       onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_)=>SignPage()));},
                       child: Text("SIGN UP"),
                     ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
