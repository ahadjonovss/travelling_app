import 'dart:io';
import 'package:sizer/sizer.dart';

import 'package:flutter/material.dart';
import 'package:travelling/pages/main_page.dart';

import '../utils/images.dart';
TextEditingController emailController = new TextEditingController();
var myFile=File("archive.txt");
class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(left:160,top: 770),
                  child: TextButton(onPressed: () {
                    var snackBar = SnackBar(
                        content: Text("You can not open the app without registration!"),
                        duration: Duration(seconds: 3),
                        behavior: SnackBarBehavior.floating,
                        action: SnackBarAction(
                          label: "Ok",
                          onPressed: () {},
                        )
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  },
                    child: Text("Skip",style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.normal ),),)),
              Container(
                decoration:const  BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                height: MediaQuery.of(context).size.height * 0.55,
                width: double.infinity,
                child: Center(
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration:const  BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        image: DecorationImage(
                          image: AssetImage(MyImages.logo),
                        )
                    ),
                  ),
                ),

              ),
              Positioned(
                child: Center(
                  child: Container(
                      margin: EdgeInsets.only(top: 310),
                      height: 420,
                      width: 350,
                      decoration:const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                      child:  Container(
                        child: Column(
                          children: [
                            SizedBox(height: 36,),
                            Text("Are you ready for Travelling?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(height: 12,),
                            Text("Discover Amazing Thing Near Account You",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200),),
                            SizedBox(height: 32,),
                            Container(
                              height: 60,
                              width: 300,
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                controller: emailController,
                                autofocus: false,
                                decoration: InputDecoration(
                                  hintText: "Enter your Email",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(8))
                                  )
                                ),
                              ),
                            ),
                            SizedBox(height: 16,),
                            Center(
                              child: InkWell(
                                onTap: (){
                                  if(emailController.text.contains("@gmail.com") && emailController.text.length>13){
                                    String email=emailController.text;

                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage(email: email)));
                                    emailController.text="";

                                  }
                                  else{
                                    var snackBar = SnackBar(
                                        content: Text("Invalid Email!",style: TextStyle(color: Colors.red),),
                                        duration: Duration(seconds: 3),
                                        behavior: SnackBarBehavior.floating,
                                        action: SnackBarAction(
                                          label: "Ok",
                                          onPressed: () {},
                                        )
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  }
                                },
                                child: Container(
                                  height: 60,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurpleAccent,
                                      borderRadius: BorderRadius.all(Radius.circular(8))

                                  ),
                                  child: Center(child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 16),),),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("----------------------- or connect using -----------------------"),
                            ),
                            Center(
                              child: Container(
                                height: 120,
                                width: 280,
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        var snackBar = SnackBar(
                                            content: Text("Log In with Facebook is impossible!"),
                                            duration: Duration(seconds: 3),
                                            behavior: SnackBarBehavior.floating,
                                            action: SnackBarAction(
                                              label: "Ok",
                                              onPressed: () {},
                                            )
                                        );
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);

                                      },
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: Colors.blue[900],
                                            borderRadius: BorderRadius.all(Radius.circular(8))
                                        ),
                                        child: Center(
                                          child: Icon(Icons.facebook_sharp,size: 35,color: Colors.white,),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8,),
                                    InkWell(
                                      onTap: (){
                                        var snackBar = SnackBar(
                                            content: Text("Log In with Twitter is impossible!"),
                                            duration: Duration(seconds: 3),
                                            behavior: SnackBarBehavior.floating,
                                            action: SnackBarAction(
                                              label: "Ok",
                                              onPressed: () {},
                                            )
                                        );
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);

                                      },
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: Colors.blue[300],
                                            borderRadius: BorderRadius.all(Radius.circular(8))
                                        ),
                                        child: Center(
                                          child: Text("t",style: TextStyle(color: Colors.white,fontSize: 38,fontWeight: FontWeight.w800),),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8,),
                                    InkWell(
                                      onTap: (){
                                        var snackBar = SnackBar(
                                            content: Text("Log In with Google is impossible!"),
                                            duration: Duration(seconds: 3),
                                            behavior: SnackBarBehavior.floating,
                                            action: SnackBarAction(
                                              label: "Ok",
                                              onPressed: () {},
                                            )
                                        );
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);

                                      },
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: Colors.red[400],
                                            borderRadius: BorderRadius.all(Radius.circular(8))
                                        ),
                                        child: Center(
                                          child: Text("G",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w600),),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8,),
                                    InkWell(
                                      onTap: (){
                                        var snackBar = SnackBar(
                                            content: Text("Log In with Phone number is impossible!"),
                                            duration: Duration(seconds: 3),
                                            behavior: SnackBarBehavior.floating,
                                            action: SnackBarAction(
                                              label: "Ok",
                                              onPressed: () {},
                                            )
                                        );
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);

                                      },
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.all(Radius.circular(8))
                                        ),
                                        child: Center(
                                          child: Icon(Icons.phone_android,size: 30,color: Colors.white,),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )//Welcome

                          ],
                        ),
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
