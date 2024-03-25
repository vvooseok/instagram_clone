import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instaclone/src/app.dart';
import 'package:instaclone/src/components/custom_text_form_field.dart';
import 'package:instaclone/src/components/custom_elevated_button.dart';
import 'package:instaclone/util/validator_util.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              child: const Text(
                "로그인 페이지",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _loginForm(),
          ],
        ),
      ),
    );
  }

  Form _loginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hint: "Username",
            funValidator: validateUsername(),
          ),
          CustomTextFormField(
            hint: "Password",
            funValidator: validatePassword(),
          ),
          CustomElevatedButton(
              text: "로그인",
              funPageRoute: () {
                // null check 필수(절대 null이 아님)
                // validate가 실행되면 방금 적은 value 값이 저장됨
                if(_formKey.currentState!.validate()) {
                  Get.to(const App());
                }
              },
          ),
        ],
      ),
    );
  }
}