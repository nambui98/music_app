import 'package:flutter/material.dart';

import '../routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: SafeArea(
        top: false,
        bottom: true,
        child: CustomScrollView(
          // scrollDirection: Axis.horizontal,
          // padding: EdgeInsets.fromLTRB(
          //     16, MediaQuery.of(context).size.height * .2, 16, 24),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    16, MediaQuery.of(context).size.height * .2, 16, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome,",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.apply(color: Colors.black),
                    ),
                    Text('Sound to your soul'),
                    const SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      cursorColor: Theme.of(context).cursorColor,
                      initialValue: '',
                      decoration: const InputDecoration(
                        // contentPadding:
                        //     EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        // prefixIconConstraints:
                        //     BoxConstraints(minWidth: 23, maxHeight: 20),
                        // prefixIcon:
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: 10, bottom: 5),
                          child: Icon(
                            Icons.mail_outline,
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'Email',

                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(49, 192, 244, 1)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(18, 18, 29, .1))),
                      ),
                    ),
                    TextFormField(
                      cursorColor: Theme.of(context).cursorColor,
                      initialValue: '',
                      // style: ,
                      decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: 10, bottom: 5),
                          child: Icon(
                            Icons.password_sharp,
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'Password',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(49, 192, 244, 1)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(18, 18, 29, .1))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.forgotpass);
                          },
                          child: Text(
                            'Forgot Password?',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.apply(color: Color.fromRGBO(0, 0, 0, .6)),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.width, 56),
                      ),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Haven't an account? "),
                        Text(
                          'Sign Up',
                          style: Theme.of(context).textTheme.bodyText2?.apply(
                              color: Color.fromRGBO(49, 192, 244, 1),
                              fontWeightDelta: 2),
                        ),
                      ],
                    ),
                    // Spacer(),
                    const Spacer(),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Other sign in options',
                      ),
                    ),

                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Google.png',
                        ),
                        Image.asset(
                          'assets/images/Facebook.png',
                        ),
                        Image.asset(
                          'assets/images/Apple.png',
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
