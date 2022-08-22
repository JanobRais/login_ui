import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignPage extends StatelessWidget {
  const SignPage({Key? key}) : super(key: key);

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
              child: Image.asset(
                "assets/images/signup_top.png",
                height: size.height * 0.2,
              ),
              top: 0,
              left: 0,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * 0.2,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SIGNUP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                SvgPicture.asset(
                  "assets/icons/signup.svg",
                  height: size.height * 0.35,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  width: size.width * 0.8,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Your email",
                        icon: Icon(
                          Icons.person,
                        )),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFFF1E6FF),
                      borderRadius: BorderRadius.circular(29)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  width: size.width * 0.8,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        suffixIcon: Icon(Icons.visibility),
                        icon: Icon(
                          Icons.lock,
                        )),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFFF1E6FF),
                      borderRadius: BorderRadius.circular(29)),
                ),
                SizedBox(
                  height: size.height * 0.013,
                ),
                Container(
                  height: 40,
                  width: size.width * 0.8,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),

                      primary: Color(0xFF6F35A5), // background
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text("SIGNUP"),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have a an Accaunt ?",
                      style: TextStyle(color: Color(0xFF6F35A5)),
                    ),
                    Text("  Sign in",
                        style: TextStyle(color: Color(0xFF6F35A5)))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      color: Color(0xFF6F35A5),
                      width: size.width * 0.3,
                    ),
                    Text(
                      " OR ",
                      style: TextStyle(
                          color: Color(0xFF6F35A5),
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      height: 1,
                      color: Color(0xFF6F35A5),
                      width: size.width * 0.3,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 23,
                      backgroundColor: Color(0xFF6F35A5),
                      child: CircleAvatar(
                        radius: 22,
                        child: SvgPicture.asset(
                          "assets/icons/facebook.svg",
                          color: Color(0xFF6F35A5),
                          height: 30,

                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Padding(

                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 23,
                        backgroundColor: Color(0xFF6F35A5),
                        child: CircleAvatar(
                          radius: 22,
                          child: SvgPicture.asset(
                            "assets/icons/twitter.svg",
                            color: Color(0xFF6F35A5),
                            height: 30,
                          ),
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 23,
                      backgroundColor: Color(0xFF6F35A5),
                      child: CircleAvatar(
                        radius: 22,
                        child: SvgPicture.asset(
                          "assets/icons/google-plus.svg",
                          color: Color(0xFF6F35A5),
                          height: 30,
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
