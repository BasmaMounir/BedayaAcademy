import 'package:bedaya_academy/MyTheme.dart';
import 'package:bedaya_academy/SignUp/SignUpDetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
static const routeName ='sign up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(child: Text('Let’s you in',style: GoogleFonts.jost(fontSize: 24),)),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xffd9dce1),
                child: Image(image: AssetImage('assets/images/google_icon.png')),),
              SizedBox(width: 10,),
              InkWell(
                onTap: () {} ,
                  child: Text('Continue with Google',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),))
            ],
          ),
          SizedBox(height: 50,),
          Text('(or)',style: TextStyle(  fontSize: 20,
            fontWeight: FontWeight.bold,),),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, SignUpDetails.routeName);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              margin: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: MyTheme.DodgerBlue,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sign In with Your Account',style: GoogleFonts.jost(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                          color: MyTheme.DodgerBlue,
                          Icons.arrow_forward
                      ))
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don’t have an Account?',style: TextStyle(  fontSize: 15,)),
              TextButton(onPressed: (){}, child: Text('SIGN UP',
                style: TextStyle(  fontSize: 15,
                fontWeight: FontWeight.bold,),))
            ],
          ),
          SizedBox(height: 130,),

        ],
      ),
    );
  }
}


