import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class ClinicSetupDocsScreen extends StatefulWidget {
  const ClinicSetupDocsScreen({Key? key}) : super(key: key);

  @override
  State<ClinicSetupDocsScreen> createState() => _ClinicSetupDocsScreenState();
}

class _ClinicSetupDocsScreenState extends State<ClinicSetupDocsScreen> {
  String clinicReg = "";
  String clinicVat = "";
  ImagePicker picker = ImagePicker();

  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  //
  // Future<File?> takePhoto(ImageSource source) async {
  //   final XFile? image = await picker.pickImage(source: source);
  //   final File? file = File(image!.path);
  //   setState(() {
  //     filez = file!;
  //   });
  // }

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
                      "Details for @clinc_name",
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
                            clinicReg = value!;
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
                            clinicVat = value!;
                          },
                        ),
                        const Gap(20),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                               pickImage();
                              },
                              child: SizedBox(
                                width: 100,
                                height: 100,
                                child:Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    border: Border.all(width: 0.6,)
                                  ),
                                  child: Center(
                                    child: image!= null
                                        ? Image.file(image!)
                                        : const Center(child: Text("Document 1")),
                                  ),
                                )

                              ),
                            ),
                          ],
                        ),
                        Gap(30),
                        SizedBox(
                          height: 52,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // takePhoto(ImageSource.gallery);
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
