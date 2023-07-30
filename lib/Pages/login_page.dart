import 'package:flutter/material.dart';
import 'package:flutter_first/Utils/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(milliseconds: 500));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  const Image(image: AssetImage("assets/images/undraw.png")),
                  Text("Welcome $name",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter Username",
                              labelText: "Username"),
                          validator: (value) {
                            if (value!.isEmpty)
                              return "Username should not be empty";
                            else
                              return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password"),
                          validator: (value) {
                            if (value!.isEmpty)
                              return "Passowrd should not be empty";
                            else if (value.length < 6)
                              return "The password length must not be less than 6";
                            else
                              return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Material(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8),
                          child: InkWell(
                            onTap: () {
                              moveToHome(context);
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 250),
                              width: changeButton ? 50 : 100,
                              height: 50,
                              alignment: Alignment.center,
                              child: changeButton
                                  ? const Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : const Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                            ),
                          ),
                        ),
                        // ElevatedButton(onPressed: (){
                        //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                        // }, child: const Text("Login"))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
