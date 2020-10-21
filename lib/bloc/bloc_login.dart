import 'package:rastreo/bloc/validator_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';


class LoginBloc extends Object with ValidatorBloc{

  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  Stream<bool> get submitLogin => Rx.combineLatest2(email, password, (a,b,) => true);

  String get emailValue => _email.value;
  String get passwordValue => _password.value;

  dispose(){
    _email?.close();
    _password?.close();
  }
}