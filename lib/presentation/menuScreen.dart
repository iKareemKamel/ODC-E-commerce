import 'package:flutter/material.dart';
class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  Image.asset('images/amit.png',
                    width: 180.0,),
                  Image.asset(
                    'images/orange.png',
                    width: 180.0,
                  ),
                ],),
                TextButton(onPressed:(){}, child: Row(
                  children: const [
                   Icon(Icons.settings),
                    SizedBox(width: 4.0,),
                    Text('Settings',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black54),),
                  ],
                )),
                TextButton(onPressed: (){}, child: Row(children: [
                  Icon(Icons.person),
                  SizedBox(width: 4.0,),
                  Text('About us',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black54),)
                ],),),
                TextButton(onPressed: (){}, child: Row(children: [
                  Icon(Icons.logout),
                  SizedBox(width: 4.0,),
                  Text('Log out',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black54),)
                ],),),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
