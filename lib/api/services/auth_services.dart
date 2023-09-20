import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:osiki/model/user_model.dart';
import 'package:osiki/utilities/utilities.dart';
import '../../constants/conts.dart';

class AuthService {
  void singUpUser({
    required BuildContext context,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      User user = User(
          id: '',
          username: username,
          email: email,
          token: '',
          password: password);

      http.Response res = await http.post(
          Uri.parse('${Constants.uri}/api/signup'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });

      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(context,
                'account created succesfully. Login with same credentials');
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
