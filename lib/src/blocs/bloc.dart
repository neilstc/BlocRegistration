import 'dart:async';
import 'validators.dart';
// bloc for password and email fields.

class Bloc with Validators {
  final _emailController = StreamController<
      String>(); // specify the type the stream is going to deal with
  final _passwordController = StreamController<String>();

//add data to stream/ get data
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

// change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
