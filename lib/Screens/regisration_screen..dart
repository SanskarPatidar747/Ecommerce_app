import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/2,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Container(
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/2.3),
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft:Radius.circular(40) ,topRight:Radius.circular(40) )),
              ),
              Container(
                margin: EdgeInsets.only(top: 90,left: 20,right: 20),
                child: Column(
                  children: [
                    Container(
                      child: Center(
                        //child: Image.asset('assets/images/log.png',
                          //width : MediaQuery.of(context).size.width/2,    // Gives the width
                        //),
                      ),
                    ),
                    SizedBox(height: 45,),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        //height: MediaQuery.of(context).size.height/1.8,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10),
                          border: Border(
                            top: BorderSide(
                              color: Colors.white, // Border color
                              width: 2, // Border width
                            ),
                          ),),
                        width: MediaQuery.of(context).size.width/1.25,
                        child: Column(
                          children: [
                            Center(child: Text("SIGN UP",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0,))),
                            SizedBox(height: 8,),
                            TextField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                hintText: "Name",
                                hintStyle: TextStyle(color: Colors.white),
                                fillColor: Colors.white,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white), // Underline color when focused
                                ),
                                prefixIcon: Icon(Icons.person,color: Colors.white,),
                              ),
                            ),
                            SizedBox(height: 8,),
                            TextField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.white),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white), // Underline color when focused
                                ),
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),
                              ),
                            ),
                            SizedBox(height: 8,),
                            TextField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                hintText: "Phone Number",
                                hintStyle: TextStyle(color: Colors.white),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white), // Underline color when focused
                                ),
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.phone,color: Colors.white,),
                              ),
                            ),
                            SizedBox(height: 8,),
                            TextField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.white),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white), // Underline color when focused
                                ),
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.password_outlined,color: Colors.white,),
                              ),
                            ),
                            SizedBox(height: 8,),
                            TextField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                hintText: "Conform Password",
                                hintStyle: TextStyle(color: Colors.white),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white), // Underline color when focused
                                ),
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.password_outlined,color: Colors.white,),
                              ),
                            ),
                            SizedBox(height: 35),
                            Container(
                              padding: EdgeInsets.all(5),
                              width: MediaQuery.of(context).size.width/2.5,
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: (
                                    Text("SIGN UP",style:TextStyle (fontWeight: FontWeight.bold,fontSize: 15),)
                                ),

                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: (
                          Text("Already have an account ? LogIn",style:TextStyle (fontWeight: FontWeight.bold,fontSize: 15))
                      ),
                    ),


                  ],
                ),
              ),



            ],
          ),

        ),
      ),

    );

  }
}
