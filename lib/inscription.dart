import 'package:docappointmentnew/mainScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Register extends StatefulWidget {
  static const String id = 'register-form';

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _formKey = GlobalKey<FormState>();
  Icon icon;
  bool _visible = false;
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmpasswordTextEditingController = TextEditingController();
  String email;
  String password;

  // bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: new AppBar(
            elevation: 0,
            title: Text("Nouveau Compte", style: new TextStyle(),),
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
                  SizedBox(height: 10),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        SizedBox(height: 5),
                        Image.asset(
                          'assets/ko.jpg',
                          height: 80,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: nameTextEditingController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.zero,
                            hintText: 'Nom & Prenom',
                            prefixIcon: Icon(Icons.supervised_user_circle),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.teal)),
                          ),
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
                                borderSide: BorderSide(color: Colors.teal)),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextFormField(
                            controller: phoneTextEditingController,
                            maxLength: 10,
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'entre Number Phone';
                              }

                              return null;
                            },
                            decoration: InputDecoration(
                              prefixText: '+225',
                              prefixIcon: Icon(Icons.phone_android),
                              labelText: 'Number Phone',
                              contentPadding: EdgeInsets.zero,
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2, color: Colors.teal),
                              ),
                              focusColor: Colors.teal,
                            ),
                          ),
                        ),
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
                              password = value;
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
                                borderSide: BorderSide(color: Colors.teal)),
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(

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
                            hintText: 'Confirmer Password',
                            prefixIcon: Icon(Icons.vpn_key_outlined),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.teal)),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: FlatButton(
                                  color: Color(0xFF3689cb),
                                  onPressed: () {
                                    // if(nameTextEditingController.text.length < 6){
                                    //   displayToastMessage("veuillez entrer plusieur caractère", context);
                                    // }else if(!emailTextEditingController.text.contains("@")){
                                    //   displayToastMessage("veuillez entrer un email valide", context);
                                    // }else if(phoneTextEditingController.text.isEmpty){
                                    //   displayToastMessage("veuillez entrer le numero de telephone", context);
                                    // }else if(passwordTextEditingController.text.length < 7){
                                    //   displayToastMessage("Mot de pass trop court", context);
                                    // }
                                    // else{
                                    //   RegisterNewUser(context);
                                    // }
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MainScreen()),
                                    );

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
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "deja un compte?",
                                style: TextStyle(fontSize: 14.0),
                              ),
                              FlatButton(
                                  color: Colors.transparent,
                                  onPressed: () {
                                     Navigator.pushNamedAndRemoveUntil(context, Login.id, (route) => false);
                                  },
                                  child: new Text(
                                    'connectez-vous',
                                    style: new TextStyle(
                                        color: Color(0xFF3689cb), fontSize: 15.0),
                                  ))
                            ],
                          ),
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
