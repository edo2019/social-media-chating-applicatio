import 'package:flutter/material.dart';
import 'upload.dart';

class code extends StatefulWidget {
  const code({Key? key}) : super(key: key);

  @override
  State<code> createState() => _codeState();
}

class _codeState extends State<code> {
  List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());
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
                  'Enter Code',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 500,
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'we have sent an SMS with an activation code to your phone number',
                    style: TextStyle(
                      fontSize: 22.3,
                    ),
                  ),
                ),
              ),
              GridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                shrinkWrap: true,
                children: List.generate(
                    4,
                    (index) => Container(
                          width: 64.0,
                          height: 64.0,
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            controller: _controllers[index],
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  width: 2.0,
                                  color: Colors.grey.shade300,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  width: 2.0,
                                  color: Colors.blue,
                                ),
                              ),
                              counterText: '',
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 8.0),
                              isDense: true,
                            ),
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                            onChanged: (value) {
                              if (value.length == 1 && index < 3) {
                                FocusScope.of(context).nextFocus();
                              } else if (value.length == 0 && index > 0) {
                                FocusScope.of(context).previousFocus();
                              }
                            },

/*
                         onSubmitted: (value){
                             String code = '';
                            for(TextEditingController controller in _controllers){
                                code += controller.text;
                           }
                            print('verification code entered:  $code');
                         },*/
                          ),
                        )),
              ),
              ElevatedButton(
                onPressed: () {
                  String code = '';
                  for (TextEditingController controller in _controllers) {
                    code += controller.text;
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => upload()),
                  );
                },
                child: Text('submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
