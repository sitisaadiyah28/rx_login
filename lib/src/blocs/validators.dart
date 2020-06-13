import 'dart:async';

class Validators{
  final validateEmail = StreamTransformer<String, String>.fromHandlers(handleData: (email, sink){
    if(email.contains('@')){
        sink.add(email);
  }else {
      sink.addError('Isilah email anda dengan benar');
  }
});
  final validatePassword = StreamTransformer<String, String>. fromHandlers(handleData: (password, sink){
    if(password.length >= 6){
      sink.add(password);
  }else{
      sink.addError('minimal password 6 karakter');
    }
});
  final validateNotelp = StreamTransformer<String, String>. fromHandlers(handleData: (notelp, sink){
    if(notelp.length >= 12){
      sink.add(notelp);
    }else{
      sink.addError('minimal notelp 12 karakter');
    }
  });
}