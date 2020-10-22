import 'package:rastreo/bloc/validator_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';


class RegisterBloc extends Object with ValidatorBloc{

  final _name = BehaviorSubject<String>();
  final _name2 = BehaviorSubject<String>();
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();
  final _password2 = BehaviorSubject<String>();

  Stream<String> get name => _name.stream.transform(validateName);
  Stream<String> get name2 => _name2.stream.transform(validateName2);
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<String> get password2 => _password2.stream.transform(validatePasswordRepeated);
  

  Function(String) get changeName => _name.sink.add;
  Function(String) get changeName2 => _name2.sink.add;
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;
  Function(String) get changePasswordRepeated => _password2.sink.add;

  Stream<bool> get submitRegister => Rx.combineLatest5(name, name2, email, password, password2, (a,b,c,d,e,) => true);

  String get nameValue => _name.value;
  String get name2Value => _name2.value;
  String get emailValue => _email.value;
  String get passwordValue => _password.value;
  String get password2Value => _password2.value;

  dispose(){
    _name?.close();
    _name2?.close();
    _email?.close();
    _password?.close();
    _password2?.close();
  }
}