import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:vm_service/utils.dart';
class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool isLogin = true; // Toggle between Login and Sign-up
  bool _isObscure= true;
  void signIn() async{
    try{
      await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } catch (e){
     // ScaffoldMessenger.of(context).showSnackBar(snackBar(
     //     content:Text(e.toString())));
    }
  }

  /*@override
  Widget build(BuildContext context) {
    return const Placeholder();
  }



}


class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
   createState() => _LoginSignupScreenState();
}


class _LoginSignupScreenState extends State<LoginSignupScreen> {


  */
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Logo
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Image.asset(
                  'assets/images/logo.png', // Replace with your logo path
                  width: 100,
                  height: 100,
                ),
              ),
              // Tabs for Login and Sign-up
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isLogin = true;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: isLogin ? Colors.red: Colors.black,
                          ),
                        ),
                        if (isLogin)
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 2,
                            width: 60,
                            color: Colors.red,
                          ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isLogin = false;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          'Sign-up',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: !isLogin ? Colors.red: Colors.black,
                          ),
                        ),
                        if (!isLogin)
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 2,
                            width: 60,
                            color: Colors.orange,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              // Input Fields and Buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: isLogin ? buildLoginForm() : buildSignupForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Login Form
  Widget buildLoginForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        Text('Email', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),
          textAlign: TextAlign.left,),
        SizedBox(height: 10,),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            labelText: 'Email address',
            //border:InputBorder.none,

          ),
        ),
        SizedBox(height: 20),
        Text('Password', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),
          textAlign: TextAlign.left,),
        TextField(
          controller: _passwordController,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            suffixIcon: IconButton( icon: Icon(_isObscure? Icons.visibility : Icons.visibility_off,),  onPressed:() {
              setState(() {
                _isObscure= !_isObscure;
              });
            }   // border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
           // border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Forgot passcode?',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          ),
          child: Center(
            child: Text(
              'Login',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }

  // Sign-up Form
  Widget buildSignupForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        Text('Names', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),
          textAlign: TextAlign.left,),
        SizedBox(height: 10,),
        TextField(

          decoration: InputDecoration(
            labelText: 'Full Name',
            //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
        SizedBox(height: 10),
        Text('Email', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),
          textAlign: TextAlign.left,),
        SizedBox(height: 10,),
        TextField(
          decoration: InputDecoration(
            labelText: 'Email address',
            //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
        SizedBox(height: 10),
        Text('Password', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),
          textAlign: TextAlign.left,),
        SizedBox(height: 12,),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            suffixIcon: IconButton( icon: Icon(_isObscure? Icons.visibility : Icons.visibility_off,),  onPressed:() {
    setState(() {
    _isObscure= !_isObscure;
    });
    //border: OutlineInputBorder(  borderRadius: BorderRadius.circular(20)),
    },  ),

        ),
        ),
        SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          ),
          child: Center(
            child: Text(
              'Sign-up',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}