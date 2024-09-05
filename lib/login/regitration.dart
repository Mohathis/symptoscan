import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:symptoscan/login/loginpage.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  var formkey = GlobalKey<FormState>();
  bool passvisibility1 = true;
  String? password;


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
          child: Image.asset("assets/images/join.png",
            height: 250,
            width: 250,
          ),
        ),
    ),
                Center(
                  child: Text('Join Us!',style: TextStyle(
                      fontSize: 40,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.account_box),
                        hintText: 'Enter Your Full Name',
                        border: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(15))),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.phone_android),
                        hintText: 'Mobile Number',
                        border: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(15))),
                  ),
                ),


    Padding(
        padding: const EdgeInsets.all(15.0),
           child: TextFormField(

             decoration: InputDecoration(
               suffixIcon: Icon(Icons.mail),
             hintText: 'Email',
                 border: OutlineInputBorder(
                  borderRadius:  BorderRadius.circular(15),),),
                  validator: (uname){
            if(uname!.isEmpty || !uname.contains('@')){
            return 'Fields are empty or invalid';
              }else{
                return null;
            }
          },
        ),
    ),
    Padding(
        padding: const EdgeInsets.all(15.0),
            child: TextFormField(
            obscuringCharacter: '*',
            obscureText: passvisibility1,
            decoration: InputDecoration(
            suffixIcon: IconButton(onPressed: () {
              setState(() {
                if(passvisibility1 == true){
                      passvisibility1 = false;
                }else {
                passvisibility1 = true;
            }
          });
    },
                icon: Icon(passvisibility1 == true
                  ? Icons.visibility_off_sharp
                    : Icons.visibility)),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
                      validator: (pass) {
                          password = pass;
                    if (pass!.isEmpty && pass.length < 6) {
                        return 'Password must contain 6 characters';
                    } else {
                      return null;
                  }
            },
          ),
    ),

                ElevatedButton(onPressed: (){
                  final valid = formkey.currentState!.validate();
                  if(valid){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }else{
                    Fluttertoast.showToast(
                        msg: "username or password incorrect",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        //  timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }

                },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                      ),
                      minimumSize: Size(200, 35)),
                  child: Text('Create An Account'),),

              ],),),
      )
    );
  }
}
