import 'package:clinico/model/user.dart';
import 'package:clinico/pages/doctorProfileForm.dart';
import 'package:clinico/pages/patientDashboard/patientBottomBar.dart';
import 'package:clinico/services/backend.dart';
import 'package:flutter/material.dart';

MyUser currentUser;

class Role extends StatelessWidget {
  MyUser user;
  Role({this.user});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Choose Your Role'),
          backgroundColor:  Colors.indigo,
        ),
        body: SafeArea(
              child: Container(
                color: Colors.indigo,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .5,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: const Radius.circular(40),
                                bottomRight: const Radius.circular(40),
                              )),
                        ),
                        Center(
                          child: Container(
                            child: Image.asset(
                              'assets/doctor.png',
                              height: 300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    RawMaterialButton(
                      shape: StadiumBorder(),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder:(BuildContext context)=>DoctorProfileForm(user:user,isEdit:false)));
                      },
                      fillColor: Colors.white,
                      splashColor: Colors.grey,
                      hoverElevation: 20,
                      child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                              child: Text(
                                "I am a Doctor",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ),
                    ),
                    SizedBox(
                      height:15
                    ),
                    Center(
                      child:Text("OR",style: TextStyle(fontSize: 19),)
                    ),
                    SizedBox(
                      height:15
                    ),
                    RawMaterialButton(
                      shape: StadiumBorder(),
                      onPressed: () {
                        currentUser = user;
                        currentUser.isDoctor = false;
                        Backend().AddPatient(user);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder:(BuildContext context)=>Patientbottonbar()));
                      },
                      fillColor: Colors.white,
                      splashColor: Colors.grey,
                      hoverElevation: 20,
                      child:Padding(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                              child: Text(
                                "I am looking for a doctor",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            )
      ),
    );
  }
}
