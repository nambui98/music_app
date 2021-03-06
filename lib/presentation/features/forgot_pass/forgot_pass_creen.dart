import 'package:flutter/material.dart';

import '../routes.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot password'),
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
                        helperText: 'Type your emaill address using sign up',
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
                    // Spacer(),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.otpconfirm);
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.width, 56),
                      ),
                      child: Text(
                        'SEND request'.toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
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
