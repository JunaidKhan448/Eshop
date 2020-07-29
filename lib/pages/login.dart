import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

enum FormType { login, register }

class _LoginPageState extends State<LoginPage> {
  final FormKey = new GlobalKey<FormState>();
  String _email;
  String _password;
  FormType _formtype =
      FormType.login; //Login Page state has a form type which is initially
  //set to state form type.login

  bool ValidateAndSave() {
    final form = FormKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void ValidateAndSubmit() async {
    if (ValidateAndSave() == true) {
      try {
        if(_formtype==FormType.login)
      {
        // Authenticate with Firebase
        FirebaseUser user = (await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password)).user;
        // SigninWithemailAndPassword is asynchronous and returns a firebase user
        print("Signed in ${user.uid}");
      } else{
        FirebaseUser user= (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password:_password)).user;
      print("Registered user : ${user.uid}");
        }
      } catch (e) {
        print("Error is $e");
      }
    }
  }

  void MoveToRegister() {
    // We have to add a piece of new information to tell the user is currently
    // logging in or registering for an account

    //When user Tap on create an account we are going to change form type to register
    setState(() {
      FormKey.currentState.reset();
      _formtype = FormType.register;
    });
  }

  void MoveToLogin(){
    setState(() {
      FormKey.currentState.reset();
      _formtype=FormType.login;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase"),
      ),
      body: Form(
        key: FormKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:
             buildInputs() + buildSubmitButtons()


          ),
        ),
      ),
    );
  }

  List<Widget> buildInputs() {
    return [
      TextFormField(
        validator: (value) =>
            value.isNotEmpty ? null : "Enter your email address",
        decoration: InputDecoration(labelText: "Email"),
        onSaved: (value) => _email = value,
      ),
      TextFormField(
          validator: (value) =>
              value.isNotEmpty ? null : "Please enter password",
          obscureText: true,
          decoration: InputDecoration(labelText: "Password"),
          onSaved: (value) => _password = value),
    ];
  }

  List<Widget> buildSubmitButtons(){
    if(_formtype==FormType.login) {
      return [
        RaisedButton(
          onPressed: ValidateAndSubmit,
          child: Text("Login"),
        ),
        FlatButton(
          child: Text(
            "Create an account",
            style: TextStyle(fontSize: 20.0, color: Color(0xff9C27B0)),
          ),
          onPressed: MoveToRegister,
        )
      ];
    }else
      {
        return [
          RaisedButton(
            onPressed: ValidateAndSubmit,
            child: Text("Create an account")
          ),
          FlatButton(
            child: Text(
              "Have an account? Log In",
              style: TextStyle(fontSize: 20.0, color: Color(0xff9C27B0)),
            ),
            onPressed: MoveToLogin,
          )
        ];
      }

  }

}
