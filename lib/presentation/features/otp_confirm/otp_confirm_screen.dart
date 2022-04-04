import 'package:flutter/material.dart';

import '../routes.dart';

class OTPConfirmScreen extends StatefulWidget {
  const OTPConfirmScreen({Key? key}) : super(key: key);

  @override
  State<OTPConfirmScreen> createState() => _OTPConfirmScreenState();
}

class _OTPConfirmScreenState extends State<OTPConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
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
                padding: const EdgeInsets.fromLTRB(44, 24, 44, 24),
                child: Column(
                  children: [
                    Text('Verification Code',
                        style: Theme.of(context).textTheme.headline6),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Please enter the 4-digit code send to you at',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'account@example.gmail',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _textFieldOTP(first: true, last: false),
                          _textFieldOTP(first: false, last: false),
                          _textFieldOTP(first: false, last: false),
                          _textFieldOTP(first: false, last: true),
                        ],
                      ),
                    ),
                    Text(
                      'Don’t receive the code? Resend code',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      '89s',
                      style: Theme.of(context).textTheme.subtitle2,
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

  Widget _textFieldOTP({bool? first, last}) {
    return Container(
      height: 66,
      child: AspectRatio(
        aspectRatio: .88,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          onSubmitted: (value) {
            Navigator.pushNamed(context, Routes.newpass);
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              color: Color(0xFF12121D),
              fontSize: 20),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: const InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(1000.0),
                ),
                borderSide: BorderSide(width: 2, color: Colors.black12)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(1000.0),
                ),
                borderSide: BorderSide(
                    width: 2, color: Color.fromRGBO(49, 192, 244, 1))),
          ),
        ),
      ),
    );
  }
}
