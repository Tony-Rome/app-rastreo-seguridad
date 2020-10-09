import 'dart:async';

const String _emailRule = r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-.]+$";

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
}
 