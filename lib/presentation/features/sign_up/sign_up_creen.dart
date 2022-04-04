import 'package:flutter/material.dart';

import '../routes.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      ;
      if (isChecked) {
        return Color.fromRGBO(49, 192, 244, 1);
      }
      return Colors.black;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      backgroundColor: Colors.white,
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
                padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: Text(
                        'Let’s Get Started!',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    TextFormField(
                      cursorColor: Theme.of(context).cursorColor,
                      initialValue: '',
                      decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: 10, bottom: 5),
                          child: Icon(
                            Icons.password_sharp,
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'Email',
                        helperText: '',
                        helperStyle:
                            TextStyle(color: Color.fromRGBO(18, 18, 29, .3)),
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
                      decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: 10, bottom: 5),
                          child: Icon(
                            Icons.password_sharp,
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'Password',
                        helperText: '',
                        helperStyle:
                            TextStyle(color: Color.fromRGBO(18, 18, 29, .3)),
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
                      decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: 10, bottom: 5),
                          child: Icon(
                            Icons.password_sharp,
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'Confirm Password',
                        helperText: 'At least 8 characters',
                        helperStyle:
                            TextStyle(color: Color.fromRGBO(18, 18, 29, .3)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(49, 192, 244, 1)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(18, 18, 29, .1))),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                          margin: EdgeInsets.only(right: 15, left: 10),
                          child: Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: RichText(
                            text: TextSpan(
                              text: 'By Signing up, you agree to the ',
                              style: Theme.of(context).textTheme.caption?.apply(
                                  color: const Color.fromRGBO(18, 18, 29, .6)),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: 'Terms of Service',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black)),
                                TextSpan(text: ' and '),
                                TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, Routes.otpconfirm);
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.width, 56),
                      ),
                      child: Text(
                        'Sign Up'.toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account? ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.signup);
                          },
                          child: Text(
                            'Sign Up',
                            style: Theme.of(context).textTheme.bodyText2?.apply(
                                color: const Color.fromRGBO(49, 192, 244, 1),
                                fontWeightDelta: 2),
                          ),
                        ),
                      ],
                    ),
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
