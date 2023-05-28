import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:appwrite/appwrite.dart';

class SignUP extends StatefulWidget {
  static const routename = '/signup';
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController Cnfpassword = TextEditingController();

  @override
  void dispose() {
    Cnfpassword.dispose();
    email.dispose();
    password.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var ht = MediaQuery.of(context).size.height;
    var wd = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 48, 85, 104),
        title: const Text('appWrite'),
        centerTitle: true,
      ),
      body: Container(
        height: ht,
        width: wd,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 48, 85, 104),
          Color.fromARGB(255, 73, 109, 128),
          Color.fromARGB(255, 125, 148, 160)
        ], begin: Alignment.topRight, end: Alignment.bottomRight)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: ht * 0.2,
              ),

              // email window

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    label: Text('Enter Email'),
                    labelStyle: TextStyle(color: Colors.white60, fontSize: 18
                        //can edit lebel text here
                        ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(26)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            //width: 1,
                            style: BorderStyle.solid
                            // Color color = const Color(0xFF000000),
                            // double width = 1.0,
                            // BorderStyle style = BorderStyle.solid,
                            )),
                  ),
                ),
              ),

              SizedBox(
                height: ht * 0.015,
              ),

              // passcode window

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: password,
                  decoration: const InputDecoration(
                    label: Text('Enter Passcode'),
                    labelStyle: TextStyle(color: Colors.white60, fontSize: 18
                        //can edit lebel text here
                        ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(26)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            //width: 1,
                            style: BorderStyle.solid
                            // Color color = const Color(0xFF000000),
                            // double width = 1.0,
                            // BorderStyle style = BorderStyle.solid,
                            )),
                  ),
                ),
              ),

              SizedBox(
                height: ht * 0.015,
              ),

              // confirm passcode

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  controller: Cnfpassword,
                  decoration: const InputDecoration(
                    label: Text('confirm Passcode'),
                    labelStyle: TextStyle(color: Colors.white60, fontSize: 18
                        //can edit lebel text here
                        ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(26)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            //width: 1,
                            style: BorderStyle.solid
                            // Color color = const Color(0xFF000000),
                            // double width = 1.0,
                            // BorderStyle style = BorderStyle.solid,
                            )),
                  ),
                ),
              ),

              // submit button

              SizedBox(
                height: ht * 0.015,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey.shade700,
                    minimumSize: Size(wd * 0.8, ht * 0.05),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28))),
                onPressed: () async {
                  if(email.text.isEmpty|| !email.text.contains('@')){
                    Fluttertoast.showToast(
                        msg: 'Enter Valid Email',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.SNACKBAR,
                        backgroundColor: Colors.red,
                        textColor: Colors.yellow);
                   
                   }
                  if (password.text != Cnfpassword.text) {
                    Fluttertoast.showToast(
                        msg: 'Passcode does not match',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.red,
                        textColor: Colors.yellow);
                   
                   }
                   

                   
                   
                },
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
