import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:symptoscan/login/regitration.dart';
import 'package:symptoscan/screen/Home.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formkey = GlobalKey<FormState>();
  bool passvisibility1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/images/login.png', // Replace with your image path
                    height: 300, // Adjust height as needed
                    width: 300,  // Adjust width as needed
                  ),
                ),
              ),
              Center(
                child: Text('Login',style: TextStyle(
                    fontSize: 40,fontWeight: FontWeight.bold),),
              ),
              
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.mail),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (uname) {
                    if (uname!.isEmpty || !uname.contains('@')) {
                      return 'Fields are empty or invalid';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
                child: TextFormField(
                  obscuringCharacter: '*',
                  obscureText: passvisibility1,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passvisibility1 = !passvisibility1;
                        });
                      },
                      icon: Icon(
                        passvisibility1
                            ? Icons.visibility_off_sharp
                            : Icons.visibility,
                      ),
                    ),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (pass) {
                    if (pass!.isEmpty || pass.length < 6) {
                      return 'Password must contain 6 characters';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    Fluttertoast.showToast(
                      msg: "Login successful",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.TOP,
                      backgroundColor: Colors.white, // You can change the color as needed
                      textColor: Colors.blue,
                      fontSize: 16.0,
                    );
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => home()),
                    );
                  } else {
                    Fluttertoast.showToast(
                      msg: "username or password incorrect",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.TOP,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 35),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),

                  child: Text('Login'),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Registration()),
                  );
                },
                child: Text('Not a user?? Register here'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
