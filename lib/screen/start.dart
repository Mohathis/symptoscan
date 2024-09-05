import 'package:flutter/material.dart';
import 'package:symptoscan/login/loginpage.dart';


class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centers both the image and text
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Image.asset('assets/images/delivery.png', width: 200, height: 200),
                ),
                SizedBox(height: 20), // Adds some spacing between the image and the text
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(
                    'Ready to Feast?',
                    style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(
                    "Let's Begin!",
                    style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30,left: 100), // Adjust padding to position the button
            child: ElevatedButton(
              onPressed: ()  {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                    },
              child: Text('Get Started'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 70),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
        ],

        ),

    );
  }
}
