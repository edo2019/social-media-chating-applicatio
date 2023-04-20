import 'package:flutter/material.dart';
import 'code.dart';

class jisajili extends StatefulWidget {
  const jisajili({Key? key}) : super(key: key);

  @override
  State<jisajili> createState() => _jisajiliState();
}

class _jisajiliState extends State<jisajili> {
  late TextEditingController _countryController;
  late TextEditingController _phoneNumber;

  @override
  void initState() {
    super.initState();
    _countryController = TextEditingController();
    _phoneNumber = TextEditingController();
  }

  @override
  void dispose() {
    _countryController.dispose();
    _phoneNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                child: Image(
                  image: AssetImage('images/logo.png'),
                ),
              ),
              Container(
                height: 30,
                width: 100,
                alignment: Alignment.center,
                child: Text(
                  'Tuchati',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 500,
                alignment: Alignment.center,
                child: Text(
                  'Your Phone Number',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 500,
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Please confirm your country code  '
                    ' and enter your phone number',
                    style: TextStyle(
                      fontSize: 22.3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _countryController,
                          decoration: InputDecoration(
                            hintText: 'select your country',
                            suffixIcon: Icon(Icons.arrow_forward_ios_sharp),
                          ),
                          onTap: () {},
                        ),
                        TextFormField(
                          controller: _phoneNumber,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Enter your Phone number',
                            prefixIcon: Icon(Icons.add),
                          ),
                          onChanged: (value) {},
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(left: 100),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => code()),
                                  );
                                },
                                child: Icon(Icons.arrow_forward),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blueAccent,
                                  shape: CircleBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
