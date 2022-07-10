import 'package:algogence_education/routes.dart';
import 'package:encrypt/encrypt.dart';

class Enc{
  String en(String input){
    final key = Key.fromUtf8("education_algogence_masterCourse");
    final iv = IV.fromLength(16);

    final encrypter = Encrypter(AES(key));

    return encrypter.encrypt(input, iv: iv).base64;
  }
  String de(String input){
    final key = Key.fromUtf8("education_algogence_masterCourse");
    final iv = IV.fromLength(16);

    final encrypter = Encrypter(AES(key));

    return encrypter.decrypt(Encrypted.fromBase64(input), iv: iv);
  }
}