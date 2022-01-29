import 'dart:ui';
import 'package:ecommerce/Shared/models.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';

//import 'Sign UP.dart';

class SignUpScreen extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  var keyform = GlobalKey<FormState>();
  var scaffkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffkey,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Form(
                key: keyform,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/amit.png',
                          width: 180.0,
                        ),
                        Image.asset(
                          'images/orange.png',
                          width: 180.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    fnamefeild(),
                    SizedBox(
                      height: 20.0,
                    ),
                   lnamefeild(),
                    SizedBox(
                      height: 20.0,
                    ),
                    phonefeild(),
                    SizedBox(
                      height: 20.0,
                    ),
                    emailfeild(),
                    SizedBox(
                      height: 20.0,
                    ),
                    passfeild(),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: 100.0,
                      height: 50.0,
                      color: Colors.deepOrange,
                      child: MaterialButton(
                        onPressed: () {
                          if (keyform.currentState!.validate()) {
                            scaffkey.currentState!.showSnackBar(
                              SnackBar(
                                content: Text('Sending data to the server'),
                              ),
                            );
                          }
                        },
                        child: Text(
                          'SignUp',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              backgroundColor: Colors.deepOrange),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => LoginScreen()),
                        );
                        //print('Go Signup');
                      },
                      child: Text(
                        ' Have an account?  '
                            '\n        Go LogIn',
                        style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
