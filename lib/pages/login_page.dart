import 'package:flutter/material.dart';
import '../utils/routes.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({Key? key}) : super(key: key);
  
  get children => null;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child : SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/login.png', 
            fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text("Welcome",style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter UserName",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
      
                ElevatedButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(150, 40),
                  ),
                  onPressed: () {
                    // ignore: avoid_print
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: const Text("Login"),
                  )
              ],),
            )
          ],
        ),
      ));
  }
} 