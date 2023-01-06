import 'package:dms/onboard/owner/clinic_setup_basic_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SelectRoleScreen extends StatefulWidget {
  const SelectRoleScreen({Key? key}) : super(key: key);

  @override
  State<SelectRoleScreen> createState() => _SelectRoleScreenState();
}

class _SelectRoleScreenState extends State<SelectRoleScreen> {
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
                      "Select your role",
                      style: TextStyle(fontSize: 20),
                    ),
                    Gap(40),
                    RoleCard(
                      title: "Clinic Owner",
                      subtitle:
                          "Select this role if you are the clinic owner and want to setup the clinic management system",
                      callBack: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ClinicSetupBasicScreen(),
                        ));
                      },
                    ),
                    Gap(10),
                    RoleCard(
                      title: "Doctor",
                      subtitle:
                          "Select this role if you are a doctor who is here for appointment management",
                      callBack: () {},
                    ),
                    Gap(10),
                    RoleCard(
                      title: "Assistant",
                      subtitle:
                          "Select this role if you're going to manage a clinic through this app",
                      callBack: () {},
                    ),
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

class RoleCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final Function() callBack;

  const RoleCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.callBack})
      : super(key: key);

  @override
  State<RoleCard> createState() => _RoleCardState();
}

class _RoleCardState extends State<RoleCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.callBack();
      },
      child: Card(
        child: Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 18),
                  ),
                  Gap(15),
                  Text(
                    widget.subtitle,
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
