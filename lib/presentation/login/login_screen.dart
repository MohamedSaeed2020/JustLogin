import 'package:cashier/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Login...'),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/account.png'),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),

                  ///Email TFF
                  defaultTextFormField(
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email address';
                      }
                    },
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    label: 'Email Address',
                    prefix: Icon(Icons.email_outlined),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),

                  ///Password TFF
                  defaultTextFormField(
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Password is too short';
                      }
                    },
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    label: 'Password',
                    prefix: Icon(Icons.lock_outline),
                    suffix: Icons.visibility_outlined,
                    suffixPressed: () {},
                    onSubmit: (_) {},
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),

                  ///Login

                  defaultButton(
                    pressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    text: 'login',
                    radius: 20,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),

                  ///Register
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                      ),
                      defaultTextButton(
                        onPressed: () {},
                        text: 'register',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
