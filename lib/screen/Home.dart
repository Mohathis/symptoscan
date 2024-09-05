import 'package:flutter/material.dart';


class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset('assets/images/images (18).jpeg',height: 120,width: 120,),
                  ),
                  SizedBox(width: 80,),
                  Expanded(child: Text('Avoid the scare of corona virus',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),))

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text('Symptoms',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Left bottom container
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Image.asset('assets/images/cold.jpg',height: 60,width: 60,),
                      ),
                      SizedBox(width: 20,),
                      Expanded(child: Text('Cold ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))

                    ],
                  ),
                ),

                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Image.asset('assets/images/cough.jpg',height: 60,width: 50,),
                          ),
                          SizedBox(width: 20,),
                          Expanded(child: Text('Caugh ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))

                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text('Emergency Guide',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 190,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Image.asset('assets/images/coron.jpeg',height: 60,width: 60,),
                      ),
                      SizedBox(width: 20,),
                      Expanded(child: Text('Avoid the scare of corona virus ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        ElevatedButton(onPressed: (){}, 
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                minimumSize: Size(100, 60),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
                            child: Text('Call',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
