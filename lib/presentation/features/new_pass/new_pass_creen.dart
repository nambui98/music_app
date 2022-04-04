import 'package:flutter/material.dart';

import '../routes.dart';

class NewPassScreen extends StatelessWidget {
  const NewPassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Password'),
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
                        'Your new password',
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
                        hintText: 'New password',
                        helperText: 'Message',
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
                        hintText: 'Confirm new password',
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
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, Routes.otpconfirm);
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.width, 56),
                      ),
                      child: Text(
                        'Confirm'.toUpperCase(),
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
