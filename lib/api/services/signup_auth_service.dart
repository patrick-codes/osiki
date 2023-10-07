import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:osiki/model/user_model.dart';
import 'package:osiki/utilities/utilities.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants/conts.dart';
import '../../features/intro pages/login_screen.dart';
import '../../providers/user_providers.dart';

class SignUpAuthService {
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

      var userProvider = Provider.of<UserProvider>(context, listen: false);
      final navigator = Navigator.of(context);
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
            navigator.pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
              (route) => false,
            );
            showSnackBar(context, 'Account Created Succesfully !! Now Login');
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
