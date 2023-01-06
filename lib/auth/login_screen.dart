import 'package:dms/auth/register_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: Stack(
            children: [
              // Center(
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(30),
                    Row(
                      children: [
                        Text(
                          "DMS",
                          style: TextStyle(fontSize: 23),
                        )
                      ],
                    ),
                    Gap(30),
                    Text(
                      "Please login",
                      style: TextStyle(fontSize: 20),
                    ),
                    Gap(50),
                    Form(
                        child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: "Enter email"),
                          onSaved: (value) {
                            username = value!;
                          },
                        ),
                        Gap(20),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          onSaved: (value) {
                            password = value!;
                          },
                        ),
                        Gap(40),
                        SizedBox(
                          height: 52,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("LOGIN", style: TextStyle(fontSize: 18),),
                          ),
                        ),Gap(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Create Account?"),
                            TextButton(onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const RegisterPage(),
                              ));
                            }, child: Text("REGISTER", style: TextStyle(fontSize: 17),))
                          ],
                        )
                      ],
                    ))
                  ],
                ),
                // ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Forgot Password?"),
            TextButton(onPressed: () {  },
            child
                : Text("RESET", style: TextStyle(fontSize: 17),)),
          ],
        ),
      ),
    );
  }
}
