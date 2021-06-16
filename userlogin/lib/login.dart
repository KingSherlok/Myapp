import 'package:flutter/material.dart';
import 'user_Location.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
    String email;
    String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: [
          Text('LOGIN/SIGNUP HERE',style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          )),
          TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.emailAddress,
            onChanged: (value){
              email = value;
            },
            decoration: InputDecoration(
              hintText: 'Enter Your Email Address ',
              contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
          ),
          SizedBox(height: 48.0,),
          TextField(
            obscureText: true,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.visiblePassword,
            onChanged: (value){
              password = value;
            },
            decoration: InputDecoration(
              hintText: 'Enter Your Password',
              contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
          ),
          FlatButton(onPressed: ()async{
           
            // print(phoneNumber);
            // print(password);
            try {
              final newUser = await _auth.(
                  email: email, password: password);
              if(newUser != null){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UserLocation(),) );
              }
            }catch(e){
              print(e);//   null
            }
          }, child: Text('Login/SignUp'),),
        ],
      ),
    );
  }
}
