import 'dart:ui';
import 'package:ecommerce/Shared/models.dart';
import 'package:ecommerce/presentation/productScreen.dart';
import 'package:flutter/material.dart';

import '../homeScreen.dart';
import 'SignUpScreen.dart';

class LoginScreen extends StatelessWidget {
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
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){return'E-mail is required';}
                    else if (value != 'kareem@gmail.com'){
                      return 'Email not found';
                    }
                  },
                  decoration: InputDecoration(
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),),
                    labelText: 'Enter your Email',
                    suffixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                    SizedBox(height: 20.0,),
                    passfeild(),
                    SizedBox(height: 20.0,),
                    Container(
                      width: 100.0,
                      height: 50.0,
                      color: Colors.deepOrange,
                      child: MaterialButton(
                        onPressed: () {
                          if (keyform.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(), ));

                          }
                        },
                        child: Text(
                          'LOG IN',
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
                            builder: (context) => SignUpScreen()),
                        );
                        print('Go Signup');
                      },
                      child: Text(
                        'Go SignUp',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
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

  Widget textForm({required String name,required IconData icon,required TextInputType key,required Function validate }){
    return TextFormField(
      decoration: InputDecoration(
        labelText: name,
        suffixIcon: Icon(icon),
      ),
      keyboardType: key,
      validator: (String? value){
        validate;
      },
    );
  }
}




// TextFormField(
//   validator: (value){
//     if(value!.isEmpty){
//       return 'E-mail is required';
//     }
//   },
//   //controller: EmailController,
//   decoration: InputDecoration(
//     border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(20.0)),
//     labelText: 'Enter your E-mail',
//     suffixIcon: Icon(Icons.person),
//   ),
//   keyboardType: TextInputType.emailAddress,
// ),
// SizedBox(
//   height: 20.0,
// ),
// TextFormField(
//   validator: (value){
//     if(value!.isEmpty){
//       return'Password is required';
//     }
//   },
//   decoration: InputDecoration(
//     border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(20.0)),
//     labelText: 'Password',
//     suffixIcon: Icon(Icons.password),
//   ),
//   obscureText: true,
// ),
// SizedBox(
//   height: 20.0,
// ),