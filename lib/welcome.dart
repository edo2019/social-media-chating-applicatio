import 'package:flutter/material.dart';
import 'jisajili.dart';
class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                height: 200,
                width: 200,

                child: Image(
                  image: AssetImage('images/logo.png'),
                ),
              ),
             //SizedBox(height: 0),
              Container(
                  height: 100,
                  width: 500,
                  alignment: Alignment.center,
                  child: Text(
                      'Tuchati',
                    style: TextStyle(
                      fontSize: 50,
                    ),

                  ),
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                width: 500,
                alignment: Alignment.center,
                child: Text(
                  'The Amazing Chating App ...',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
          SizedBox(height: 30),
          Positioned(
              bottom: 20,
              right: 0,
              left: 0,
              child: Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => jisajili()),
                    );
                    },
                  child: Text(
                      'Start Messaging',
                  ),
                ),


              ),
          ),
            ],

          ),
        ),
      ),

    );
  }
}
