import 'dart:async';

const String _emailRule = r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-.]+$";
const String _nameRule = r"[a-zA-Z]\s[a-zA-Z]+$";

class ValidatorBloc {
  
    final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email,sink){

      if(email.length > 2){

        final RegExp emailRegExp = new RegExp(_emailRule);

        if (!emailRegExp.hasMatch(email) || email.isEmpty){
          sink.addError('Ingrese email válido');

        }else {
          sink.add(email);
        }
      } else {
        sink.addError('');
      }
    }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password,sink){
      if(password.length > 1){
        if (password.length < 6){
          sink.addError('Ingrese contraseña válida');
        }else {
          sink.add(password);
        }
      }else{
        sink.addError('');
      }


      }
  );

  final validatePasswordRepeated = StreamTransformer<String, String>.fromHandlers(
    handleData: (passwordRepeated,sink){
      if (passwordRepeated.length < 3){
        sink.addError('Contraseña debe coincidir');
      }else {
        sink.add(passwordRepeated);
      }
    }
  );

  final validateName = StreamTransformer<String, String>.fromHandlers(
    handleData: (name,sink){
      if(name.length > 1){
        final RegExp nameRegExp = new RegExp(_nameRule);
        if (!nameRegExp.hasMatch(name) || name.isEmpty){
          sink.addError('Los nombres no coinciden con el formato.');
        }else {
          sink.add(name);
        }
      }else{
        sink.addError('');
      }
      }
  );
  final validateName2 = StreamTransformer<String, String>.fromHandlers(
    handleData: (name,sink){
      if(name.length > 1){
        final RegExp nameRegExp = new RegExp(_nameRule);
        if (!nameRegExp.hasMatch(name) || name.isEmpty){
          sink.addError('Los apellidos no coinciden con el formato.');
        }else {
          sink.add(name);
        }
      }else{
        sink.addError('');
      }
      }
  );
}
 