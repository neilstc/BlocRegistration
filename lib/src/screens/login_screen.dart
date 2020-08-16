import 'package:flutter/material.dart';
import 'dart:async';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    final bloc = Provider.of(context);
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            emailField(bloc),
            passwordField(bloc),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton(),
          ],
        ));
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "you@example.com",
              labelText: "Email",
              errorText: snapshot.error,
            ),
          );
        });
  }

// scope
  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changePassword,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "password",
              labelText: "Password",
              errorText: snapshot.error,
            ),
          );
        });
  }

// global instance wxample
  // Widget passwordField() {
  //   return StreamBuilder(
  //     stream: bloc.password,
  //     builder: (context, snapshot) {
  //       return TextField(
  //         onChanged: bloc.changePassword,
  //         obscureText: true,
  //         decoration: InputDecoration(
  //           hintText: "password",
  //           labelText: "Password",
  //         ),
  //       );
  //     },
  //   );
  // }

  Widget submitButton() {
    return RaisedButton(
      child: Text("Login"),
      color: Colors.blueAccent[200],
      onPressed: () => {},
    );
  }
}
