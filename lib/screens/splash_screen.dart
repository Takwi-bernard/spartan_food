import 'package:flutter/material.dart';
import 'login_signup_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Padding(padding: EdgeInsets.all(0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [

SizedBox(height: 90,),
        CircleAvatar(
        backgroundImage: AssetImage('assets/images/logo.png'),
        backgroundColor: Colors.white,
          radius: 40,
        ),
            /*Image.asset('assets/images/logo2.PNG',
            width: 100,
              height: 60,


            ),*/
            SizedBox(height: 50,),
            Padding(padding: EdgeInsets.only(left: 60),
           child :Text("Food For Everyone",
            style: TextStyle(
              fontSize: 55,
              color: Colors.white,
              fontWeight: FontWeight.bold,

            ),
            ),
            ),
            SizedBox(height: 60,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
           children: [
           CircleAvatar(
             backgroundImage: AssetImage('assets/images/womantoy.png'),
                  radius: 125,
           backgroundColor: Colors.red,

            ),
      CircleAvatar(
        backgroundImage: AssetImage('assets/images/mantoy.png'),
          radius: 80.0,
        backgroundColor: Colors.red,
      )],

      ),
            SizedBox(height: 120,),

            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context)=> LoginSignupScreen())
              );
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text('Get Started',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                  fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

