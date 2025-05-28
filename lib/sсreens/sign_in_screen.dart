import 'package:authorization_app/functions/password_validator.dart';
import 'package:authorization_app/utils/size_indent.dart';
import 'package:authorization_app/widgets/align_left.dart';
import 'package:authorization_app/widgets/field_email.dart';
import 'package:authorization_app/widgets/main_button.dart';
import 'package:authorization_app/widgets/new_account.dart';
import 'package:authorization_app/widgets/field_password.dart';
import 'package:authorization_app/widgets/social_network.dart';
import 'package:authorization_app/widgets/title_email.dart';
import 'package:authorization_app/widgets/title_main_sign_in.dart';
import 'package:authorization_app/widgets/title_option_sing_in.dart';
import 'package:authorization_app/widgets/title_password.dart';
import 'package:flutter/material.dart';
import 'package:authorization_app/utils/logo.dart';
import '../functions/email_validator.dart';
import '../utils/size.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool _emailValid = false;
  bool _passwordValid = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _validateEmail(String value) {
    setState(() {
      _emailValid = EmailValidator.validate(value) == null;
    });
  }

  void _validatePassword(String value) {
    setState(() {
      _passwordValid = PasswordValidator.validate(value) == null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: size_300,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: sizeIndent_120),
                  logoAppMax,
                  const SizedBox(height: sizeIndent_70),
                  const MainTitleSignIn(),
                  const SizedBox(height: sizeIndent_50),
                  const AlignLeft(
                    childWidget: TitleEmailWidget(),
                  ),
                  const SizedBox(height: sizeIndent_13),
                  AlignLeft(
                    childWidget: FieldEmailWidget(
                      controller: _emailController,
                      onChanged: _validateEmail,
                    ),
                  ),
                  const SizedBox(height: sizeIndent_13),
                  const AlignLeft(
                    childWidget: TitlePasswordWidget(),
                  ),
                  const SizedBox(height: sizeIndent_13),
                  AlignLeft(
                      childWidget: FieldPasswordWidget(
                    controller: _passwordController,
                    onChanged: _validatePassword,
                  )),
                  const SizedBox(height: sizeIndent_37),
                  MainButtonWidget(enabled: _emailValid && _passwordValid,),
                  const SizedBox(height: sizeIndent_26),
                  const TitleOptionSingInWidget(),
                  const SizedBox(height: sizeIndent_30),
                  const SocialNetworkButtonWidget(),
                  const SizedBox(height: sizeIndent_43),
                  const NewAccountWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
