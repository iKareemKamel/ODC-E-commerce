import 'package:flutter/material.dart';
Widget emailfeild(){
  return TextFormField(
    validator: (value){
      if(value!.isEmpty){return'E-mail is required';}

    },
    decoration: InputDecoration(
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),),
      labelText: 'Enter your Email',
       suffixIcon: Icon(Icons.email),
    ),
    keyboardType: TextInputType.emailAddress,
  );
}

Widget passfeild(){
  return TextFormField(
    validator: (value){
      if(value!.isEmpty){return'Password is required';}
      else if (value.contains(' ') ||
          value.contains('/') ||
          value.contains('*') ||
          value.contains('?') ||
          value.contains('>') ||
          value.contains('<') ||
          value.contains('"') ||
          value.contains('*') ||
          value.contains('-') ||
          value.contains('!')
      )
      {
      return'Password address can\'t contain: space, / , * , ? , > , < , " , + , - , !';
      }

    },
    decoration: InputDecoration(
      border:OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),),
      labelText: 'Enter your Password',
      suffixIcon: Icon(Icons.remove_red_eye),
    ),
    keyboardType: TextInputType.visiblePassword,
    obscureText: true,
  );
}

Widget fnamefeild(){
  return TextFormField(
    validator: (value){
      if(value!.isEmpty){return'First name is required';}
    },
    decoration: InputDecoration(
      border:OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),),
      labelText: 'First name',
      suffixIcon: Icon(Icons.title),
    ),
    keyboardType: TextInputType.text,
  );
}

Widget lnamefeild(){
  return TextFormField(
    validator: (value){
      if(value!.isEmpty){return'Last name is required';}
    },
    decoration: InputDecoration(
      border:OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),),
      labelText: 'Last name',
      suffixIcon: Icon(Icons.title),
    ),
    keyboardType: TextInputType.text,
  );
}

Widget phonefeild(){
  return TextFormField(
    validator: (value){
      if(value!.isEmpty){return'Phone number is required';}
    },
    decoration: InputDecoration(
      border:OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),),
      labelText: 'Phone number',
      suffixIcon: Icon(Icons.phone),
    ),
    keyboardType: TextInputType.phone,
  );
}



