import 'package:cityton_mobile/components/DisplaySnackbar.dart';
import 'package:cityton_mobile/components/framePage.dart';
import 'package:cityton_mobile/components/header.dart';
import 'package:cityton_mobile/constants/header.constants.dart';
import 'package:cityton_mobile/shared/blocs/auth.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Signup extends StatefulWidget {
  @override
  SignupState createState() => SignupState();
}

class SignupState extends State<Signup> {
  AuthBloc authBloc;

  final GlobalKey<FormBuilderState> _signupFormKey =
      GlobalKey<FormBuilderState>();
  TextEditingController usernameController;
  TextEditingController emailController;
  TextEditingController passwordController;
  TextEditingController verifyPasswordController;

  @override
  void initState() {
    super.initState();
    authBloc = AuthBloc();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    verifyPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return FramePage(
        header: Header(
          title: "Signup",
          leadingState: HeaderLeading.DEAD_END,
        ),
        sideMenu: null,
        body: Column(
          children: <Widget>[
            FormBuilder(
              key: _signupFormKey,
              autovalidate: true,
              readOnly: false,
              child: Column(children: <Widget>[
                FormBuilderTextField(
                  controller: usernameController,
                  attribute: "username",
                  decoration: InputDecoration(
                      labelText: "Username", hintText: "At least 3 characters"),
                  maxLines: 1,
                  validators: [
                    FormBuilderValidators.required(
                        errorText: "This field is required"),
                    FormBuilderValidators.minLength(3,
                        errorText: "At least 3 characters"),
                  ],
                ),
                FormBuilderTextField(
                  controller: emailController,
                  attribute: "email",
                  decoration: InputDecoration(labelText: "Email"),
                  maxLines: 1,
                  validators: [
                    FormBuilderValidators.required(
                        errorText: "This field is required"),
                    FormBuilderValidators.email(
                        errorText: "Isn't a valid email format")
                  ],
                ),
                FormBuilderTextField(
                  controller: passwordController,
                  attribute: "password",
                  decoration: InputDecoration(labelText: "Password"),
                  obscureText: true,
                  maxLines: 1,
                  validators: [
                    FormBuilderValidators.required(
                        errorText: "This field is required"),
                    FormBuilderValidators.minLength(3,
                        errorText: "At least 3 characters"),
                  ],
                ),
                FormBuilderTextField(
                  controller: verifyPasswordController,
                  attribute: "verifyPassword",
                  decoration: InputDecoration(labelText: "Verify password"),
                  obscureText: true,
                  maxLines: 1,
                  validators: [
                    FormBuilderValidators.required(
                        errorText: "This field is required"),
                    FormBuilderValidators.minLength(3,
                        errorText: "At least 3 characters"),
                    (val) {
                      if (passwordController.text !=
                          verifyPasswordController.text)
                        return "Passwords are not the same";
                    },
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                      child: Text('Submit'),
                      onPressed: () async {
                        if (_signupFormKey.currentState.saveAndValidate()) {
                          var response = await this.authBloc.signup(
                              usernameController.text,
                              emailController.text,
                              passwordController.text,
                              null);
                          if (response.status == 200) {
                            Navigator.pushNamedAndRemoveUntil(context, '/home',
                                (Route<dynamic> route) => false);
                          } else {
                            DisplaySnackbar.createError(message: response.value);
                          }
                        }
                      }),
                ),
              ]),
            ),
            InkWell(
              child: Text("To login"),
              onTap: () {
                Navigator.popAndPushNamed(context, '/login');
              },
            ),
          ],
        ));
  }
}
