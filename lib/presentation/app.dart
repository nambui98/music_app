import 'package:flutter/material.dart';

import 'features/login/login_screen.dart';
import 'features/routes.dart';
import 'features/start/start_screen.dart';
import 'theme/theme.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.start,
      onGenerateRoute: Routes.generateRoute,
      routes: <String, WidgetBuilder>{
        Routes.start: (BuildContext context) => StartScreen(),
        Routes.login: (BuildContext context) => LoginScreen(),
      },
      theme: defaultTheme(),
    );
  }
}
