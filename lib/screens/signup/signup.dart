import 'dart:io';
import 'package:cityton_mobile/components/DisplaySnackbar.dart';
import 'package:cityton_mobile/components/framePage.dart';
import 'package:cityton_mobile/components/header.dart';
import 'package:cityton_mobile/constants/header.constants.dart';
import 'package:cityton_mobile/http/ApiResponse.dart';
import 'package:cityton_mobile/shared/blocs/auth.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';

class Signup extends StatefulWidget {
  @override
  SignupState createState() => SignupState();
}

class SignupState extends State<Signup> {
  AuthBloc _authBloc = AuthBloc();

  final GlobalKey<FormBuilderState> _signupFormKey =
      GlobalKey<FormBuilderState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController verifyPasswordController = TextEditingController();
  File _profilePicture = File(DotEnv().env['DEFAULT_PROFILR_PICTURE']);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void openGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      _profilePicture = image;
    }
  }

  Widget build(BuildContext context) {
    return FramePage(
        header: Header(
          title: "Signup",
          leadingState: HeaderLeading.DEAD_END,
        ),
        sideMenu: null,
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(_profilePicture.path),
                ),
                Positioned(
                    right: -20,
                    top: -20,
                    height: 50.0,
                    width: 50.0,
                    child: IconButton(
                        icon: Icon(
                          Icons.wallpaper,
                          size: 30,
                        ),
                        onPressed: () {
                          openGallery();
                        }))
              ],
              overflow: Overflow.visible,
            ),
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
                          var response = await this._authBloc.signup(
                              usernameController.text,
                              emailController.text,
                              passwordController.text,
                              _profilePicture);
                          if (response.status == 200) {
                            Navigator.pushNamedAndRemoveUntil(context, '/home',
                                (Route<dynamic> route) => false);
                          } else {
                            DisplaySnackbar.createError(
                                message: response.value);
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
        )));
  }
}
