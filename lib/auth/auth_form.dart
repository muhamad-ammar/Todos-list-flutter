import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formkey = GlobalKey<FormState>();
  var _email = '';
  var _password = '';
  var _username = '';
  bool isloginPage = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 20,
          bottom: 20,
        ),
        children: [
          Container(
            child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    if (!isloginPage)
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        key: ValueKey('username'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Incorrect Username';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _username = value!;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(8),
                                borderSide: new BorderSide()),
                            labelText: 'Enter Username',
                            labelStyle: GoogleFonts.roboto()),
                      ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      key: ValueKey('email'),
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@')) {
                          return 'Incorrect Email';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _email = value!;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(8),
                              borderSide: new BorderSide()),
                          labelText: 'Enter Email',
                          labelStyle: GoogleFonts.roboto()),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      key: ValueKey('password'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Incorrect password';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _password = value!;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(8),
                              borderSide: new BorderSide()),
                          labelText: 'Enter Password',
                          labelStyle: GoogleFonts.roboto()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.all(5),
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green),
                        child: TextButton(
                          child: isloginPage
                              ? Text(
                                  'Login',
                                  style: GoogleFonts.roboto(
                                      fontSize: 20, color: Colors.white),
                                )
                              : Text('Sign Up',
                                  style: GoogleFonts.roboto(
                                      fontSize: 20, color: Colors.white)),
                          onPressed: () {},
                        )),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
