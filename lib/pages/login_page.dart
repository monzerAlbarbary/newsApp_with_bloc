import 'package:flutter/material.dart';

import 'package:news_app_bloc/pages/widget/elevated_button_coustom.dart';
import 'package:news_app_bloc/pages/widget/text_field_coustm.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/logo 1.png'),
                      SizedBox(
                        width: 12,
                      ),
                      Image.asset('assets/images/INSIGHT 360.png'),
                    ],
                  ),
                ),
              ),
              TextFildCoustom(
                hint: 'Username',
              ),
              TextFildCoustom(
                hint: 'Email',
              ),
              TextFildCoustom(
                hint: 'Phone',
              ),
              TextFildCoustom(
                hint: 'Password',
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 13),
                  child: Text(
                    'I am a',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff001F3F),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Color(0xffF8F8F8)),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(children: <Widget>[
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text("Or sign in with"),
                  ),
                  Expanded(child: Divider()),
                ]),
              ),
              ElevatedButtonCoustom(
                image: 'assets/images/devicon_google.png',
              ),
              ElevatedButtonCoustom(
                image: 'assets/images/logos_facebook.png',
              ),
              Center(
                child: Text(
                    'By Signing up to Insight 360 you are accepting our \nTerms & Condition '),
              )
            ],
          ),
        ),
      ),
    );
  }
}
