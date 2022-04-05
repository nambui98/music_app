import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/di/injection/injection.dart';
import 'forgot_pass/forgot_pass_creen.dart';
import 'list_songs/list_songs_screen.dart';
import 'login/login_screen.dart';
import 'main/dashboard/dashboard_screen.dart';
import 'main/home/bloc/home_bloc.dart';
import 'main/home/home_page.dart';
import 'new_pass/new_pass_creen.dart';
import 'otp_confirm/otp_confirm_screen.dart';
import 'sign_up/sign_up_creen.dart';
import 'start/start_screen.dart';

class Routes {
  static const String start = 'start';
  static const String dashboard = 'dashboard';
  static const String login = 'login';
  static const String forgotpass = 'forgotpass';
  static const String otpconfirm = 'otpconfirm';
  static const String newpass = 'newpass';
  static const String signup = 'signup';
  static const String listsongs = 'listsongs';

  static Map<String, WidgetBuilder> _getAll(RouteSettings settings) => {
        Routes.dashboard: (context) => DashboardScreen(
              pages: [
                BlocProvider(
                  create: (context) => getIt<HomeBloc>(),
                  child: const HomePage(),
                ),
              ],
            ),
        Routes.login: (context) => const LoginScreen(),
        Routes.start: (context) => const StartScreen(),
        Routes.forgotpass: (context) => const ForgotPassScreen(),
        Routes.otpconfirm: (context) => const OTPConfirmScreen(),
        Routes.newpass: (context) => const NewPassScreen(),
        Routes.signup: (context) => const SignUpScreen(),
        Routes.listsongs: (context) => const ListSongsScreen(),
      };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final _builder = _getAll(settings)[settings.name];
    return MaterialPageRoute(
      builder: _builder!,
      settings: settings,
      fullscreenDialog: false,
    );
  }
}
