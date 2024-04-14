import 'package:aplikasitest/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome Back", 
            style: textTextStyle.copyWith(fontSize: 30, fontWeight: bold),),
            const SizedBox(height: 11),
            Text("Silahkan login untuk masuk ke akun anda!", 
            style: secondaryTextStyle.copyWith(fontSize: 12),
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 64),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Email", 
                style: textTextStyle.copyWith(fontSize: 12, fontWeight: bold),),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "adriantsatrio@gmail.com",
                      hintStyle: textTextStyle.copyWith(fontSize: 12, color: textColor.withOpacity(0.6)),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                 Text("Password", 
                style: textTextStyle.copyWith(fontSize: 12, fontWeight: bold),),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text("Remember me", style: greyTextStyle.copyWith(fontSize: 12),)
                  ],
                ),
                Text("Forgot Password?", style: textTextStyle.copyWith(fontSize: 12),)
              ],
            ),
            const SizedBox(height: 32,),
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryButtonColor,
                ),
                onPressed: (){},
                child: Text("LOGIN", style: whiteTextStyle.copyWith(fontWeight: bold),),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 19),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                ),
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network("https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png", height: 20,),
                    const SizedBox(width: 12,),
                    Text("SIGN IN WITH GOOGLE", style: textTextStyle.copyWith(fontWeight: bold),),
                  ],
                ),

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You don't have an account yet? ", style: secondaryTextStyle.copyWith(fontSize: 12),),
                Text("Sign up", style: tncTextStyle.copyWith(fontSize: 12),)
              ],
            )
          ],
        ),
       ),
      ),
    );
  }
}