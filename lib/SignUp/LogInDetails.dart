import 'package:bedaya_academy/MyTheme.dart';
import 'package:bedaya_academy/SignUp/CreateAccountScreen.dart';
import 'package:bedaya_academy/SignUp/RegisterTextFiled.dart';
import 'package:flutter/material.dart';

class LogInDetails extends StatefulWidget {
  static const String routeName = 'sign';

  @override
  State<LogInDetails> createState() => _LogInDetailsState();
}

class _LogInDetailsState extends State<LogInDetails> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/bedaya_logo.png')),
          SizedBox(
            height: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Let’s Sign In.!',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 24),
              ),
              Text(
                'Login to Your Account to Continue your Courses',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          RegisterTextFiled(text: 'Email', pref_icon: Icons.email_outlined),
          RegisterTextFiled(
              text: 'Password',
              pref_icon: Icons.lock,
              sufix_icon: Icons.remove_red_eye),
          Row(
            children: [
              SizedBox(
                width: 20,
                height: 50,
              ),
              Checkbox(
                value: isChecked, // Bind the value to the state
                onChanged: (bool? newValue) {
                  setState(() {
                    isChecked =
                        newValue; // Update the state when the checkbox is tapped
                  });
                },

                activeColor: MyTheme.PersianRose,
              ),
              Text(
                'Remember Me',
                style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff545454),
                    fontWeight: FontWeight.w900),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff545454),
                      fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(CreateAccountScreen.routeName);
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    color: MyTheme.PersianRose),
                child: Text(
                  'Sign Up',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white, fontSize: 20),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don’t have an Account?',
                  style: TextStyle(
                    fontSize: 15,
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: MyTheme.DodgerBlue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
