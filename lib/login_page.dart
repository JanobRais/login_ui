import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                "assets/images/main_top.png",
                height: size.height * 0.3,
              ),
              top: 0,
              left: 0,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset("assets/images/login_bottom.png",
                  width: size.width * 0.35),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 50,
                ),
                SvgPicture.asset(
                  "assets/icons/login.svg",
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
                  height: 50,
                  width: size.width * 0.8,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),

                      primary: Color(0xFF6F35A5), // background
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text("LOGIN"),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an Accaunt ?   ",
                        style: TextStyle(color: Color(0xFF6F35A5))),
                    Text("Sing Up", style: TextStyle(color: Color(0xFF6F35A5)))
                  ],
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
