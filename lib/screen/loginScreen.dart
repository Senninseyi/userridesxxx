import 'package:flutter/material.dart';
import 'package:userrides/screen/registerScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String idScreen = "Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 45.0,),
              const Image(
                  image: AssetImage("images/logo.png"),
                  width: 500.0,
                  height: 250.0,
                  alignment: Alignment.center,
              ),

              const SizedBox(height: 1.0,),
              const Text(
                "Login as Riders",
                style: const TextStyle(fontSize: 24.0, fontFamily: "Brand-Bold"),
                textAlign: TextAlign.center,
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [

                    const SizedBox(height: 1.0,),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          labelText: "Email",
                          labelStyle: const TextStyle(
                            fontSize: 14.0,
                          ),
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.0
                          )
                      ),
                      style: const TextStyle(fontSize: 14.0),
                    ),

                    const SizedBox(height: 20.0,),
                    const TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                          ),
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.0
                          )
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),

                    const SizedBox(height: 30.0,),
                    RaisedButton(
                      color: Colors.yellow,
                      textColor: Colors.white,
                      child: Container(
                        height: 50.0,
                        child: const Center(
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 18.0, fontFamily: "Brand-Bold"),
                          ),
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(24.0)
                      ),
                      onPressed: ()
                      {
                        print("Login Button Clicked");
                      },
                    )

                  ],
                ),
              ),

              FlatButton(
                onPressed: ()
                  {
                    Navigator.pushReplacementNamed(context, RegisterScreen.idScreen);
                  },
                child: const Text(
                  "Do not have account? Register Here"
                )
              )


            ],
          ),
        ),
      ),
    );
  }
}