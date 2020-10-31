import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text(
          "Sign up with",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff009000),
            height: 2,
          ),
        ),

        Text(
          "PLANTOR",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Color(0xff009000),
            height: 1,
            letterSpacing: 2,
          ),
        ),

        SizedBox(
          height: 15,
        ),

        TextField(
          decoration: InputDecoration(
            hintText: "Username",
            hintStyle: TextStyle(
              fontSize: 18,
              color: Color(0xff000000),
              fontWeight: FontWeight.bold,
            ),
            prefixIcon: Icon(Icons.person),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                )
            ),
            filled: true,
            fillColor: Colors.grey.withOpacity(0.2),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0,),
          ),
        ),

        SizedBox(
          height: 15,
        ),

        TextField(
          decoration: InputDecoration(
            hintText: "Contact Number",
            hintStyle: TextStyle(
              fontSize: 18,
              color: Color(0xff000000),
              fontWeight: FontWeight.bold,
            ),
            prefixIcon: Icon(Icons.phone),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                )
            ),
            filled: true,
            fillColor: Colors.grey.withOpacity(0.2),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0,),
          ),
        ),

        SizedBox(
          height: 15,
        ),

        TextField(
          decoration: InputDecoration(
            hintText: "Email",
            hintStyle: TextStyle(
              fontSize: 18,
              color: Color(0xff000000),
              fontWeight: FontWeight.bold,
            ),
            prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                )
            ),
            filled: true,
            fillColor: Colors.grey.withOpacity(0.2),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0,),
          ),
        ),

        SizedBox(
          height: 15,
        ),

        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(
              fontSize: 18,
              color: Color(0xff000000),
              fontWeight: FontWeight.bold,
            ),
            prefixIcon: Icon(Icons.lock_outline),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                )
            ),
            filled: true,
            fillColor: Colors.grey.withOpacity(0.2),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0,),
          ),
        ),

        SizedBox(
          height: 15,
        ),

        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Confirm Password",
            hintStyle: TextStyle(
              fontSize: 18,
              color: Color(0xff000000),
              fontWeight: FontWeight.bold,
            ),
            prefixIcon: Icon(Icons.lock_open),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                )
            ),
            filled: true,
            fillColor: Colors.grey.withOpacity(0.2),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0,),
          ),
        ),

        SizedBox(
          height: 16,
        ),

        Container(
          height: 36,
          decoration: BoxDecoration(
            color: Color(0xff008000),
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xff008000).withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 4,
                offset: Offset(0, 3),
              ),
            ],
          ),

          child: Center(
            child: MaterialButton(
              onPressed: (){},

              child: Text(
                "SIGN UP",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff111111),
                ),
              ),
            ),
          ),
        ),

        SizedBox(
          height: 15,
        ),

        Text(
          "Or Sign up with",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff009000),
            height: 1,
          ),
        ),

        SizedBox(
          height: 15,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              Entypo.facebook_with_circle,
              size: 32,
              color: Color(0xff008000),
            ),

            SizedBox(
              width: 24,
            ),

            Icon(
              Entypo.google__with_circle,
              size: 32,
              color: Color(0xff008000),
            ),

            SizedBox(
              width: 24,
            ),

            Icon(
              Entypo.linkedin_with_circle,
              size: 32,
              color: Color(0xff008000),
            ),

          ],
        ),

      ],
    );
  }
}