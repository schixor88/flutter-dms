import 'dart:ffi';

import 'package:dms/onboard/owner/clinic_setup_docs_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClinicSetupBasicScreen extends StatefulWidget {
  const ClinicSetupBasicScreen({Key? key}) : super(key: key);

  @override
  State<ClinicSetupBasicScreen> createState() => _ClinicSetupBasicScreenState();
}

class _ClinicSetupBasicScreenState extends State<ClinicSetupBasicScreen> {
  String clinicName = "";
  String ownerName = "";
  String clinicContact = "";
  String clinicAddress = "";
  int staffsCount = 0;
  bool agreeTerms = false;

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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "DMS",
                          style: TextStyle(fontSize: 23),
                        ),
                        Text(
                          "As : Clinic Owner",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Gap(30),
                    Text(
                      "Create a clinic",
                      style: TextStyle(fontSize: 20),
                    ),
                    Gap(40),
                    Form(
                        child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter registered clinic name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          onSaved: (value) {
                            clinicName = value!;
                          },
                        ),
                        const Gap(20),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter clinic address",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          onSaved: (value) {
                            clinicAddress = value!;
                          },
                        ),
                        const Gap(20),
                        TextFormField(

                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Enter number of staffs",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          onSaved: (value) {
                            staffsCount = int.parse(value!);
                          },
                        ),
                        const Gap(20),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter clinic phone number",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          onSaved: (value) {
                            staffsCount = int.parse(value!);
                          },
                        ),
                        Gap(20),
                        Row(children: [
                          Checkbox(
                            value: agreeTerms,
                            onChanged: (bool? value) {
                              setState(() {
                                agreeTerms = value ?? false;
                              });
                            },
                          ),
                          Text(
                            "The clinic details are true and valid",
                            style: TextStyle(fontSize: 15),
                          )
                        ]),
                        Gap(30),
                        SizedBox(
                          height: 52,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ClinicSetupDocsScreen(),
                              ));
                            },
                            child: Text(
                              "PROCEED",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
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
