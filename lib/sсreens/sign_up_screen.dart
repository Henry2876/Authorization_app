import 'package:authorization_app/functions/name_validator.dart';
import 'package:authorization_app/functions/password_validator.dart';
import 'package:authorization_app/utils/size.dart';
import 'package:authorization_app/utils/size_indent.dart';
import 'package:authorization_app/widgets/align_left.dart';
import 'package:authorization_app/widgets/field_confirm_password.dart';
import 'package:authorization_app/widgets/field_email.dart';
import 'package:authorization_app/widgets/field_name.dart';
import 'package:authorization_app/widgets/main_button.dart';
import 'package:authorization_app/widgets/field_password.dart';
import 'package:authorization_app/widgets/old_account.dart';
import 'package:authorization_app/widgets/social_network.dart';
import 'package:authorization_app/widgets/title_confirm_password.dart';
import 'package:authorization_app/widgets/title_email.dart';
import 'package:authorization_app/widgets/title_name.dart';
import 'package:authorization_app/widgets/title_option_sing_in.dart';
import 'package:authorization_app/widgets/title_password.dart';
import 'package:flutter/material.dart';
import 'package:authorization_app/utils/logo.dart';
import '../functions/checked_sign_up.dart';
import '../functions/email_validator.dart';
import '../widgets/title_main_sign_up.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _emailValid = false;
  bool _nameValid = false;
  bool _passwordValid = false;
  bool _passwordsMatch = false;
  bool _checkedBox = false;

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _validateEmail(String value) {
    setState(() {
      _emailValid = EmailValidator.validate(value) == null;
    });
  }

  void _validateName(String value) {
    setState(() {
      _nameValid = NameValidator.validate(value) == null;
    });
  }

  void _validatePassword(String value) {
    setState(() {
      _passwordValid = PasswordValidator.validate(value) == null;
    });
  }

  void _validateConfirmPassword(String value) {
    setState(() {
      _passwordValid = PasswordValidator.validate(value) == null;
      _passwordsMatch = value == _passwordController.text;
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
                  const SizedBox(height: sizeIndent_67),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      logoArrow,
                      const SizedBox(width: sizeIndent_248),
                      logoAppMin,
                    ],
                  ),
                  const SizedBox(height: sizeIndent_61_68),
                  const MainTitleSignUp(),
                  const SizedBox(height: sizeIndent_40),
                  const AlignLeft(
                    childWidget: TitleNameWidget(),
                  ),
                  const SizedBox(height: sizeIndent_13),
                  AlignLeft(
                    childWidget: FieldNameWidget(
                      controller: _nameController,
                      onChanged: _validateName,
                    ),
                  ),
                  const SizedBox(height: sizeIndent_17),
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
                  const SizedBox(height: sizeIndent_17),
                  const AlignLeft(
                    childWidget: TitlePasswordWidget(),
                  ),
                  const SizedBox(height: sizeIndent_13),
                  AlignLeft(
                    childWidget: FieldPasswordWidget(
                      controller: _passwordController,
                      onChanged: _validatePassword,
                    ),
                  ),
                  const SizedBox(height: sizeIndent_17),
                  const AlignLeft(
                    childWidget: TitleConfirmPasswordWidget(),
                  ),
                  const SizedBox(height: sizeIndent_13),
                  AlignLeft(
                    childWidget: FieldConfirmPasswordWidget(
                      controller: _confirmPasswordController,
                      password: _passwordController.text,
                      onChanged: _validateConfirmPassword,
                    ),
                  ),
                  const SizedBox(height: sizeIndent_18),
                  TermsCheckboxWidget(
                    onChanged: (bool value) {
                      setState(() {
                        _checkedBox = value;
                      });
                    },
                  ),
                  const SizedBox(height: sizeIndent_18),
                  MainButtonWidget(
                    enabled: _emailValid &&
                        _nameValid &&
                        _checkedBox &&
                        _passwordValid &&
                        _passwordsMatch,
                  ),
                  const SizedBox(height: sizeIndent_26),
                  const TitleOptionSingInWidget(),
                  const SizedBox(height: sizeIndent_23),
                  const SocialNetworkButtonWidget(),
                  const SizedBox(height: sizeIndent_26),
                  const OldAccountWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
