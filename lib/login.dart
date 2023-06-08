import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'inscription.dart';

class Login extends StatefulWidget {
  static const String id = 'login-form';


  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Icon icon;
  bool _visible = false;
  // bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: new AppBar(
            elevation: 0,
            title: Text("connectez vous", style: new TextStyle(),),
            centerTitle: true,
            backgroundColor: Color(0xFF3689cb),


          ),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(height: 5),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        SizedBox(height: 15),
                        Image.asset(
                          'assets/ko.jpg',
                          height: 120,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: emailTextEditingController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.zero,
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email_outlined),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF3689cb),)),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: passwordTextEditingController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'entrez votre password';
                            }
                            if (value.length < 6) {
                              return 'Mot de pass court';
                            }
                            setState(() {
                              // password = value;
                            });
                            return null;
                          },
                          obscureText: _visible == false ? true : false,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: _visible
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _visible = !_visible;
                                  });
                                }),
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.zero,
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.vpn_key_outlined),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF3689cb),)),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: FlatButton(
                                  color: Color(0xFF3689cb),
                                  onPressed: () {
                                    // if(!emailTextEditingController.text.contains("@")){
                                    //   displayToastMessage("veuillez entrer un email valide", context);
                                    // }else if(passwordTextEditingController.text.isEmpty){
                                    //   displayToastMessage("veuillez entrer le mot de pass", context);
                                    // }else{
                                    //   LoginAndAuthenticateUser(context);
                                    // }

                                  },
                                  child: Text(
                                    'SE CONNECTER',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily:
                                        'fonts/Anton-Regular.ttf ',
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "pas de compte?",
                              style: TextStyle(fontSize: 14.0),
                            ),
                            FlatButton(
                                color: Colors.transparent,
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(context, Register.id, (route) => false);
                                },
                                child: new Text(
                                  'inscrivez-toi!!',
                                  style: new TextStyle(
                                      color: Color(0xFF3689cb), fontSize: 15.0),
                                ))
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                                onTap: () {

                                  // Navigator.pushNamed(
                                  //     context, ResetPassword.id);

                                },
                                child: Expanded(
                                    child: Text(
                                      'Mot de pass oublié ?',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold),
                                    ))),
                          ],
                        ),
                        SizedBox(height: 20),

                        // RaisedButton(
                        //   color: Colors.blue,
                        //   onPressed: () {
                        //     Navigator.pushReplacementNamed(
                        //         context, RegisterScreen.id);
                        //   },
                        //   child: Text('register'),
                        // )
                      ])
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
