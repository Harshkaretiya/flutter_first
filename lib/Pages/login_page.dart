import 'package:flutter/material.dart';
import 'package:flutter_first/Utils/MyRoutes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Image(image: AssetImage("assets/images/undraw.png")),
                const Text("Welcome",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 10,
                ),
                Padding(padding: const EdgeInsets.all(20),
                  child: Column(children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    }, child: const Text("Login"))
                  ],),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
