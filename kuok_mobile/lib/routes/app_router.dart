import 'package:go_router/go_router.dart';

import '../features/auth/presentation/login/pages/login_page.dart';
import '../features/auth/presentation/register/pages/register_page.dart';
import '../features/auth/presentation/forgot_password/pages/forgot_password_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: '/forgot-password',
      builder: (context, state) => const ForgotPasswordPage(),
    ),
  ],
);