import 'package:go_router/go_router.dart';
import 'package:pos_fl_hibryd/core/route/route_name.dart';
import 'package:pos_fl_hibryd/features/login/presentation/ui/widgets/login_screen.dart';
import 'package:pos_fl_hibryd/features/signup/presentation/ui/widgets/signup_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router_provider.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/login',

    routes: [
      GoRoute(
        path: '/login',
        name: loginRoute,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        name: signUpRoute,
        builder: (context, state) => const SignupScreen(),
      ),
    ],
  );
}