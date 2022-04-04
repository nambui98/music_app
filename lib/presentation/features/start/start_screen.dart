import 'package:flutter/material.dart';

import '../routes.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        repeat: ImageRepeat.noRepeat,
        fit: BoxFit.cover,
        image: AssetImage('assets/images/login.jpg'),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SafeArea(
          bottom: true,
          top: false,
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 32, 16, 40),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 221,
                    width: 221,
                  ),
                ]),
                const Spacer(),
                Text('Feel your soul',
                    style: Theme.of(context).textTheme.headline4),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 36, vertical: 5),
                  child: Text(
                      'Create an account to run wild through our curated experiences.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.apply(color: Colors.white)),
                ),
                const SizedBox(
                  height: 19,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.login);
                  },
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
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 56),
                      primary: const Color.fromRGBO(0, 0, 0, .3)),
                  child: Text(
                    'Listen as guest'.toUpperCase(),
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
