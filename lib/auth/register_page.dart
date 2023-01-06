import 'package:dms/onboard/select_role_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String fullname = "";
  String gender = "";
  String dob = "";
  String phone = "";
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
                      "Create a new account",
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
                              hintText: "Enter full name"),
                          onSaved: (value) {
                            fullname = value!;
                          },
                        ),
                        Gap(20),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter date of birth",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          onSaved: (value) {
                            dob = value!;
                          },
                        ),
                        Gap(20),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter gender",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          onSaved: (value) {
                            gender = value!;
                          },
                        ),
                        Gap(20),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter phone number",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          onSaved: (value) {
                            phone = value!;
                          },
                        ),
                        Gap(40),
                        SizedBox(
                          height: 52,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SelectRoleScreen(),
                              ));
                            },
                            child: Text(
                              "PROCEED",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Gap(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Already have an account?"),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "TO LOGIN",
                                  style: TextStyle(fontSize: 17),
                                ))
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
    );
  }
}
