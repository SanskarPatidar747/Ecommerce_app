import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                    SizedBox(height: 80,),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        //height: MediaQuery.of(context).size.height/2.5,
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
                            SizedBox(height: 10),
                            Center(child: Text("LogIn",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0,))),
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
                            SizedBox(height: 10),
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
                            SizedBox(height: 35),
                            Container(
                              padding: EdgeInsets.all(5),
                              width: MediaQuery.of(context).size.width/2.5,
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: (
                                    Text("LogIn",style:TextStyle (fontWeight: FontWeight.bold,fontSize: 15),)
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
                          Text("Don't have an account ? SignUp",style:TextStyle (fontWeight: FontWeight.bold,fontSize: 15))
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
